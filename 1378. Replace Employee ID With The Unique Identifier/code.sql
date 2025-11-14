--# Write your MySQL query statement below
-- select 
--     name,unique_id 
-- from 
--     employees e
-- left join
--     employeeUNI eu
-- on e.id = eu.id;

-- --OR

select
    name, (select unique_id from employeeUNI where id=employees.id) as unique_id
from
    employees;