-- select curr.id
-- from weather curr
-- join weather pre on curr.recordDate = pre.recordDate + 1
--     where curr.temperature > pre.temperature;
-- OR
select curr.id
from weather curr
where exists 
    (select 1 
        from weather prev   
        where datediff(curr.recordDate,prev.recordDate)=1   
        and curr.temperature > prev.temperature
    );