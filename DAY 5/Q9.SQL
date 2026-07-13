/*The manager also wants to know the lowest salary paid to any employee.

Generate the report.*/
SELECT EMPNAME, salary
FROM Employees
WHERE salary = (SELECT MIN(salary) FROM EMPLOYEES);
