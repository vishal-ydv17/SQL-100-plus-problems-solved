-- # Write your MySQL query statement below

-- select 
--     customer_id ,
--     count(*) as count_no_trans
-- from 
--     visits
-- left join
--     transactions on visits.visit_id = Transactions.visit_id
--     where
--         transaction_id is NULL
-- group by
--     customer_id
-- order by
--     count_no_trans desc;

--#OR

select 
    customer_id,
    count(*) as count_no_trans
from 
    visits
where
    not exists
        (select 1 from transactions where visits.visit_id = transactions.visit_id)
group by --#to avoid the duplicates of same customer_id
    customer_id;