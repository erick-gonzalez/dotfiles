use bettermentdb
;-- -. . -..- - / . -. - .-. -.--
select * from Trades order by id desc limit 3000
;-- -. . -..- - / . -. - .-. -.--
select * from Trades order by id desc limit 6000
;-- -. . -..- - / . -. - .-. -.--
select * from Trades where createdDate <= '2016-01-12' order by id desc limit 6000
;-- -. . -..- - / . -. - .-. -.--
select * from Tickers where id = 2
;-- -. . -..- - / . -. - .-. -.--
select * from Trades where createdDate < '2016-01-13' order by id desc limit 6000
;-- -. . -..- - / . -. - .-. -.--
select * from UserTransactions where completedDate is NULL order by id desc limit 100