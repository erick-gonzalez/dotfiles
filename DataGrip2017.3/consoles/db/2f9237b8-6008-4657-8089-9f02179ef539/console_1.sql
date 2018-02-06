use bettermentdb;

select * from Trades where createdDate < '2016-01-13' order by id desc limit 6000

select * from Tickers where id = 2