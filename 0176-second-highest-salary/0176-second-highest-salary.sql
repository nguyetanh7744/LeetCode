# Write your MySQL query statement below
WITH CTE AS
(
    SELECT 
salary ,
DENSE_RANK() OVER (ORDER BY salary DESC ) as Rank_num
FROM Employee
)
SELECT 
MAX(salary) as SecondHighestSalary
FROM CTE 
Where rank_num = 2

