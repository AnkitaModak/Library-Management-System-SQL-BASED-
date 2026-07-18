/*Display employees who have never issued a book.*/
SELECT 
E.EMPID ,
B.BORROWID 
FROM EMPLOYEES E 
FULL OUTER JOIN BORROW B ON e.empid = b.employee_id
WHERE b.borrowid IS NULL;
