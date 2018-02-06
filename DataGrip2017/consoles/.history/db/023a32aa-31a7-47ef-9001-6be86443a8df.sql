select count(*) from legacy_portfolios
;-- -. . -..- - / . -. - .-. -.--
insert into goals ('16c35fbc-f653-49b0-bbca-d046201213ca', '34d725bc-be7e-42ad-8a36-def163e8e83c', 'betterment', 123, now())
;-- -. . -..- - / . -. - .-. -.--
insert into goals (uuid_generate_v1(), uuid_generate_v1(), 'betterment', 123, now())
;-- -. . -..- - / . -. - .-. -.--
insert into goals (uuid_generate_v1(), uuid_generate_v1(), 'betterment', 123, now(), now())
;-- -. . -..- - / . -. - .-. -.--
select * from legacy_portfolios
;-- -. . -..- - / . -. - .-. -.--
now();
;-- -. . -..- - / . -. - .-. -.--
now()
;-- -. . -..- - / . -. - .-. -.--
insert into goals (portfolio_id, portfolio_type, bettermentdb_goal_id, created_at, updated_at)
  values ('21b7ae12-c148-4b81-956b-8a481821f7e3', 'betterment', 123, now(), now())
;-- -. . -..- - / . -. - .-. -.--
insert into goals (id, portfolio_id, portfolio_type, bettermentdb_goal_id, created_at, updated_at)
  values ('19fe51ec-65bf-4d39-92f5-17803d906c03', '21b7ae12-c148-4b81-956b-8a481821f7e3', 'betterment', 123, now(), now())
;-- -. . -..- - / . -. - .-. -.--
insert into goals (id, portfolio_id, portfolio_type, bettermentdb_goal_id, created_at, updated_at)
  values ('d634f94d-554c-4d36-86c2-24abb8d07efb', '316739c1-1807-463b-bb9c-d41488c172dc', 'betterment', 123, now(), now())
;-- -. . -..- - / . -. - .-. -.--
select * from goals
;-- -. . -..- - / . -. - .-. -.--
select * from betterment_portfolios
;-- -. . -..- - / . -. - .-. -.--
select * from risk_based_portfolios
;-- -. . -..- - / . -. - .-. -.--
select * from risk_based_tax_treatment_portfolios
;-- -. . -..- - / . -. - .-. -.--
select * from idempotent_receipts
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE goals ADD CONSTRAINT UNIQUE ON (portfolio_id)
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE goals ADD UNIQUE (portfolio_id)
;-- -. . -..- - / . -. - .-. -.--
select * from Goals
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_ticker_factor_overrides
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_ticker_factor_assignments
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_ticker_factors
;-- -. . -..- - / . -. - .-. -.--
set search_path = "public"
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_buyable_ticker_overrides
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_buyable_tickers
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_buyable_ticker_assignments
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE portfolio_change_intents ADD completed_at TIMESTAMP WITH TIME ZONE
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_change_intents LIMIT 1
;-- -. . -..- - / . -. - .-. -.--
DROP INDEX portfolio_change_intents_goal_id_idx
;-- -. . -..- - / . -. - .-. -.--
CREATE INDEX ON portfolio_change_intents (goal_id, completed_at)
;-- -. . -..- - / . -. - .-. -.--
select * from portfolio_change_intents
;-- -. . -..- - / . -. - .-. -.--
select now()::date from portfolio_change_intents
;-- -. . -..- - / . -. - .-. -.--
select now() from portfolio_change_intents
;-- -. . -..- - / . -. - .-. -.--
select now()::date
;-- -. . -..- - / . -. - .-. -.--
select now()::date = null
;-- -. . -..- - / . -. - .-. -.--
select now()::date = now()::date