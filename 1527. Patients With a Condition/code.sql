--# Write your MySQL query statement below

SELECT 
    p.patient_id
    ,p.patient_name
    ,p.conditions
FROM patients p
WHERE p.conditions REGEXP '(^| )DIAB1' --#this line will also works ^ means start,| means or , and a empty space means it start with a space