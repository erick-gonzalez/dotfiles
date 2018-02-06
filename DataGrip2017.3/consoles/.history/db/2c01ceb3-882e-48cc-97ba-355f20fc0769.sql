SELECT *
FROM UserTransactions limit 100
;-- -. . -..- - / . -. - .-. -.--
select * from Users limit 10
;-- -. . -..- - / . -. - .-. -.--
select * from UserTransactions limit 100
;-- -. . -..- - / . -. - .-. -.--
select * from UserTransactions limit 10
;-- -. . -..- - / . -. - .-. -.--
use bettermentdb
;-- -. . -..- - / . -. - .-. -.--
select * from ComponentAllocations limit 100
;-- -. . -..- - / . -. - .-. -.--
select distinct assetClass from ComponentAllocations LIMIT 1000
;-- -. . -..- - / . -. - .-. -.--
use betterlocks
;-- -. . -..- - / . -. - .-. -.--
select * from betterlocks.CurrentLocks