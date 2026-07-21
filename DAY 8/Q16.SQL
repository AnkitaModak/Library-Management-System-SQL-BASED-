/*The library manager wants a reusable report showing every borrowing transaction.

The report should display:

Borrow ID
Member Name
Book Title
Employee Name
Borrow Date
Return Date
Fine Amount

Create the most appropriate database object so employees can access this report easily without rewriting the SQL each time.*/
CREATE VIEW BORROW_REPORT AS 
SELECT 
br.borrowid,
M.MEMBERNAME,
B.BOOKTITLE,
E.EMPNAME,
BR.BORROWDATE,
BR.RETURNDATE,
BR.FINEAMT
FROM BORROW BR 
INNER JOIN BOOKS B ON B.BOOKID = BR.BOOKID
INNER JOIN MEMBERS M ON BR.MEMBERID = M.MEMBERID
INNER JOIN EMPLOYEES E ON  BR.EMPLOYEE_ID = E.EMPID;
