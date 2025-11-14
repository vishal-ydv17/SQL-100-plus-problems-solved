--# Write your MySQL query statement below

SELECT e1.name AS Employee
FROM Employee e1 --#assume e1 as employee
JOIN Employee e2 --#e2 as manager table
  ON e1.managerId = e2.id  --#e1.manager means employee table me manager ki di
  --#e2.id means manager table me employee ki id
WHERE e1.salary > e2.salary;