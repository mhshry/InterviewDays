SQL
====Find Employee who is absent on date 5 jan- Absant

SELECT EmployeeName from EmployeeInfor ei
left JOIN EmployeeAttendance ea on ei.EmployeeId = ea.EmployeeId
AND AttandanceDate = '05-01-2026' 
Where ei.employeeId is null

===sql n+1 problem
Solve with left join, User has Posts

===Query to delete duplicates (keep earliest date)
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Name  ORDER BY CreatedDate ASC ) AS rn
    FROM YourTable
)
DELETE FROM CTE WHERE rn > 1;
===Top salary

WITH emp AS(
SELECT emp_name, emp_salary, DENSE_RANK() OVER (ORDER BY emp_salary DESC) AS rank
FROM Employee )
SELECT * FROM emp where rank =n

===Performance- FROM sys.query_store_plan, sys.query_store_query
Query Store for historical analysis.
DMVs for real-time monitoring.
Performance Dashboard for visual bottleneck detection
Include Live Quer.y Statistics
 Activity Monitor-Select Expensive query
