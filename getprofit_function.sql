 
select * from sales






create or replace function getprofit (p_product_id varchar)
returns double precision as $$
declare 
Total_sales double precision ;
Total_profit double precision ;
profit_percentage double precision ;

Begin 

select sum (s.sales) as Total_sales , sum (s.profit) as Total_profit into Total_sales, Total_profit from sales s
	where s.product_id = p_product_id ;

	profit_percentage := (Total_profit / Total_sales ) * 100 ;
	return profit_percentage ;
end ;
 $$ language plpgsql ;

select getprofit ('FUR-BO-10001798')

select sum(sales) as Total_sales, sum (profit) as Total_profit , sum(sales)/ sum (profit) as profit_percentage from sales
where product_id = 'FUR-BO-10001798'

select *, getprofit (product_id) from sales


