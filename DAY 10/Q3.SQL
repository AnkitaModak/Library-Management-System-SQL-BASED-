/*The librarian wants to check whether a member can borrow another book.

Business Rule:

If TOTALBORROWED < 5
→ Print Eligible to Borrow
Else
→ Print Borrow Limit Reached*/
for member id = 'M001';
DECLARE
TOTALBORROWED NUMBER;
BEGIN
SELECT COUNT(BOOKID)
INTO TOTALBORROWED 
FROM BORROW
WHERE MEMBERID= 'M001';
IF TOTALBORROWED < 5 THEN
DBMS_OUTPUT.PUT_LINE('ELIGIBLE TO BORROW');
ELSE 
DBMS_OUTPUT.PUT_LINE('BORROW LIMIT REACHED');
END IF;
END;
/
