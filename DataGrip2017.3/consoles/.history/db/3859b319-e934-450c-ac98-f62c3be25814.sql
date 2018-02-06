set session transaction isolation level read uncommitted
;-- -. . -..- - / . -. - .-. -.--
select * from position_only_account_transfers
;-- -. . -..- - / . -. - .-. -.--
set session CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL read UNCOMMITTED