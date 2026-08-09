# Write your MySQL query statement below
select 
E.name,
u.unique_id
from Employees E
left join employeeUNI u
on e.id=u.id;