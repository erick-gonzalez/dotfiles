# Betterment Environment Variables
BETTERMENT_DB_SCHEMA_PATH=$HOME'/src/better-core/etc/databases/BettermentDB-schema.sql'
BETTERMENT_DB_TRIGGERS_PATH=$HOME'/src/better-core/etc/databases/BettermentDB-triggers.sql'
BETTERLOCKS_SCHEMA_PATH=$HOME'/src/better-core/etc/databases/BetterLocks-schema.sql'
STORED_PROCS_PATH=$HOME'/src/better-core/etc/databases/storedProcs'
STORED_FUNCTIONS_PATH=$HOME'/src/better-core/etc/databases/storedFunctions'

# Environment Variables For Running the DB Subsetter
# RAILS_ENV="development"
# BETTERMENT_DB_HOST=localhost
# BETTERMENT_DB_NAME="bettermentdb_subset"
# BETTERMENT_DB_USERNAME="root"
# BETTERMENT_DB_PASSWORD=""
# JASYPT_PASSWORD="abc"
# JASYPT_SALT="def"
# REMOTE_BETTERMENT_DB_URL="mysql2://root:@localhost:3306/bettermentdbfresh?encoding=utf8mb4"
# BETTERMENT_CRYPTO_HMAC_SECRET='5Evrja5X9V6Wj1xpKrk8IELetMzHsp2q1y6V9rdK804='
# BETTERMENT_CRYPTO_SIMPLEBOX_SECRET='MvUbOZ5TpV8Kv7bm1Y8VFUQKYu7Xv4TboJfeYdJpA3s='

pr () {
    CURRENT_BRANCH=$(git rev-parse --abbrev-ref head) 
    PARENT_BRANCH=$(echo $CURRENT_BRANCH | cut -d '/' -f2) 
    REPO_NAME=$(basename `git rev-parse --show-toplevel`) 
    git push -u origin $CURRENT_BRANCH
    open "https://github.com/Betterment/$REPO_NAME/compare/$PARENT_BRANCH...$CURRENT_BRANCH?expand=1"
}

jprofiler-ssh-tunnel() {
  IP=$1
  PORT=$2
  AUTH_KEY=$(bcreds $IP | grep -oE "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
  echo "Your auth key is $AUTH_KEY"
  ssh erick@$IP -L$PORT:127.0.0.1:$PORT
}

ssh-stage-main() {
  IP="$(bip batch stage -t process:standard)"
  bssh $IP
}

ssh-prod-main() {
  IP="$(bip batch prod -t process:standard)"
  bssh $IP
}

dropbox_folder() {
    BMT_DROPBOX_DEVELOPMENT=$HOME'/Dropbox (Betterment)/Betterment Development/database_changes'
    FOLDERNAME="${BMT_DROPBOX_DEVELOPMENT}/$(date +'%Y')/$(date +'%Y%m%d')/"

    if [[ ! -d "$FOLDERNAME" ]]; then
        mkdir -p "$FOLDERNAME"
    fi

    export DROPBOX_FOLDER=$FOLDERNAME
}

dropbox() {
    dropbox_folder
    cd "$DROPBOX_FOLDER"
}

better-core() {
    BETTER_CORE_HOME=$HOME'/src/better-core'

    cd "$BETTER_CORE_HOME"
}

tpc_statements()
{
  dropbox_folder
  python ~/src/on-call-scripts/generate_tpc.py egonzalez mlP6-f3GuT7V7LSL $@ > "${DROPBOX_FOLDER}/egonzalez-tpc.sh"
  subl "${DROPBOX_FOLDER}/egonzalez-tpc.sh"
}

custody-db-refresh() {
  gradle flyClean; gradle flyMigrate
}

rds-pool() {
    curl \
        -H "x-api-key: VYYkbN7P7G10AfktRVwpaToScLRmm766jJHYOoV0" \
        https://ai3sr1fos8.execute-api.us-east-1.amazonaws.com/prod/stress-tests \
        --silent \
        -X POST \
        -d "$1"
}

# rds-pool '{"Action":"Pool.Refresh"}' | jq .