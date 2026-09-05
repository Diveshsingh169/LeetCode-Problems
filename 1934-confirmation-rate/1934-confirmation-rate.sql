# Write your MySQL query statement below
select 
s.user_id,
Round(IFNULL(AVG(c.action="confirmed"),0),2) AS confirmation_rate
from Signups s 
left join 
confirmations c ON s.user_id=c.user_id
group by s.user_id;