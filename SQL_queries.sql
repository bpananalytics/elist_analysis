--1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 

select date_trunc(orders.purchase_ts,quarter) as purchase_quarter,
  count(distinct orders.id) as order_counts,
  sum(usd_price) as sales,
  avg(usd_price) as aov
from core.orders
left join core.customers on customers.id = orders.customer_id
left join core.geo_lookup on geo_lookup.country_code = customers.country_code
where lower(orders.product_name) like '%macbook%' 
  and region = 'NA'
group by 1
order by 1 desc;


--  What is the average quarterly order count and total sales for Macbooks sold in North America? (i.e. “For North America Macbooks, average of X units sold per quarter and Y in dollar sales per quarter”)


with quarterly as (select date_trunc(orders.purchase_ts,quarter) as purchase_quarter,
  count(distinct orders.id) as order_counts,
  sum(usd_price) as sales,
  avg(usd_price) as aov
from core.orders
left join core.customers on customers.id = orders.customer_id
left join core.geo_lookup on geo_lookup.country_code = customers.country_code
where lower(orders.product_name) like '%macbook%' 
  and region = 'NA'
group by 1
order by 1 desc)

select avg(order_counts) as average_order_per_quarter,
  avg(sales) as average_sales_per_quarter
from quarterly;


--2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 
-- (2022 and website) or (products on mobile)


select geo_lookup.region,
  avg(date_diff(order_status.delivery_ts, order_status.purchase_ts,day)) as avg_time_to_deliver
from core.order_status
left join core.orders on orders.id = order_status.order_id
left join core.customers on orders.customer_id = customers.id
left join core.geo_lookup on customers.country_code = geo_lookup.country_code
where (extract(year from orders.purchase_ts)=2022 and orders.purchase_platform = 'website') or orders.purchase_platform = 'mobile app'
group by 1
order by 2 desc;

--3) What was the refund rate and refund count for each product overall? 

with refund_table as (select *,
  case when order_status.refund_ts is not null then 1 else null end as is_refund 
from core.orders
left join core.order_status on order_status.order_id = orders.id)

select refund_table.product_name, 
  sum(usd_price)/sum(is_refund) as refund_rate,
  sum(is_refund) as refund_count 
from refund_table
group by 1
order by 3 desc;

--alternate with typo fix 
select case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
    sum(case when refund_ts is not null then 1 else 0 end) as refunds,
    avg(case when refund_ts is not null then 1 else 0 end) as refund_rate
from core.orders 
left join core.order_status 
    on orders.id = order_status.order_id
group by 1
order by 3 desc;


-- What was the refund rate and refund count for each product per year? 

select case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
  extract(year from orders.purchase_ts) as year,
    sum(case when refund_ts is not null then 1 else 0 end) as refund_count,
    avg(case when refund_ts is not null then 1 else 0 end) as refund_rate
from core.orders 
left join core.order_status 
    on orders.id = order_status.order_id
group by 1, 2
order by 1,2 desc;



--4) Within each region, what is the most popular product? 

with sales_by_product as (
  select region,
    case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
    count(distinct orders.id) as total_orders
  from core.orders
  left join core.customers
    on orders.customer_id = customers.id
  left join core.geo_lookup
    on geo_lookup.country_code = customers.country_code
  group by 1,2),

ranked_orders as (
  select *,
    row_number() over (partition by region order by total_orders desc) as order_ranking
  from sales_by_product
  order by 4 asc)

select *
from ranked_orders 
where order_ranking = 1;

--5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 

select customers.loyalty_program,
  orders.purchase_platform,
  avg(date_diff(orders.purchase_ts, customers.created_on,day)) as days_to_purchase
from core.customers
left join core.orders on customers.id = orders.customer_id
group by 1,2;

