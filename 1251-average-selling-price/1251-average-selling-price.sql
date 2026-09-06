# Write your MySQL query statement below
select 
p.product_id,
IFNULL(round(SUM(P.price*u.units)/SUM(u.units),2),0) AS average_price
from prices p 
left join unitsSold u
on p.product_id =u.product_id
AND u.purchase_date Between p.start_date AND p.end_date
group by p.product_id;