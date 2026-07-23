/*The librarian wants to issue a book to a member.

Before issuing, the system must check whether the book is available.

Business Rules
If AVAILABLECOPIES > 0
Print "Book Available - Issue Allowed"
Else
Print "Book Not Available"

Check for:

BOOKID = 'B001'*/
DECLARE
   VK_AVAILABLE BOOKS.NOOFCOPIES%TYPE;
BEGIN
   SELECT NOOFCOPIES
   INTO VK_AVAILABLE
   FROM BOOKS
   WHERE BOOKID = 'B001';

   IF VK_AVAILABLE > 0 THEN
      DBMS_OUTPUT.PUT_LINE('Book Available - Issue Allowed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Book Not Available');
   END IF;
END;
/
