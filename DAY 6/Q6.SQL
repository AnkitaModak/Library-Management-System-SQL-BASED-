/*The library director wants to know which employee handled each borrowing transaction.

Generate a report displaying:

Employee Name
Member Name
Book Issued
Borrow Date*/
SELECT 
e.empname,
m.membername,
b.borrowdate,
b.duedate
FROM EMPLOYEES E,MEMBERS M
INNER JOIN BORROW B ON M.MEMBERID = B.MEMBERID;
