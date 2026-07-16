/*Prepare a report showing all borrowing transactions together with:

Member City
Book Category
Employee Designation

The management wants to analyse borrowing patterns across cities and categories.*/
SELECT 
M.CITY,
B.GENRE,
e.desg
FROM MEMBERS M 
INNER JOIN BORROW BR ON M.MEMBERID = BR.MEMBERID 
INNER JOIN EMPLOYEES E ON BR.EMPLOYEE_ID = E.EMPID
INNER JOIN BOOKS B ON BR.BOOKID = B.BOOKID;
