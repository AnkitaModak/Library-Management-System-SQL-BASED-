/*Prepare a report for the Annual Audit Committee showing:

Borrow ID
Member Name
Member City
Book Title
Author Name
Employee Name
Borrow Date
Return Date
Fine Amount

The committee wants one comprehensive report that combines information from all relevant departments.*/
SELECT
    BR.BORROWID,
    M.MEMBERNAME,
    M.CITY,
    B.BOOKTITLE,
    A.AUTHNAME,
    E.EMPNAME,
    BR.BORROWDATE,
    BR.RETURNDATE,
    BR.FINEAMT
FROM BORROW BR
JOIN MEMBERS M
    ON BR.MEMBERID = M.MEMBERID
JOIN BOOKS B
    ON BR.BOOKID = B.BOOKID
JOIN AUTHORS A
    ON B.BOOKAUTH = A.AUTHID
JOIN EMPLOYEES E
    ON BR.EMPLOYEE_ID = E.EMPID;
