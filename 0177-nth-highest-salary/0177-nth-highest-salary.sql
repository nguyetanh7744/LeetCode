CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (

 WITH CTE AS
(
    SELECT 
salary ,
DENSE_RANK() OVER (ORDER BY salary DESC ) as Rank_num
FROM Employee
)
SELECT 
MAX(salary) as getNthHighestSalary
FROM CTE 
Where rank_num = N
  );
END;
