create table crypto_info (
	coins varchar(50) primary key,
	usd decimal(12,2) check(usd > -1),
	usd_market_cap bigint  check (usd_market_cap > -1),
	usd_24h_vol bigint check (usd_24h_vol > -1),
	usd_24h_change decimal(5,2),
	last_updated_at datetime
);

select * from crypto_info;

select top (10) *
from crypto_info
order by usd_market_cap desc;