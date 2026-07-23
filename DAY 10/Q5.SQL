/*Business Logic
Check if the book is available.
If available, check the borrow limit.
If borrow limit is okay, check whether the member has any pending fine.
If all conditions are satisfied, approve the issue.*/
DECLARE
   VK_AVAILABLE BOOKS.NOOFCOPIES%TYPE;
   VK_TOTALBORROWED NUMBER;
   VK_FINE BORROW.FINEAMT%TYPE;
BEGIN
   -- Check available copies
   SELECT NOOFCOPIES
   INTO VK_AVAILABLE
   FROM BOOKS
   WHERE BOOKID = 'B001';

   -- Count books borrowed by the member
   SELECT COUNT(BOOKID)
   INTO VK_TOTALBORROWED
   FROM BORROW
   WHERE MEMBERID = 'M001';

   -- Get fine amount
   SELECT FINEAMT
   INTO VK_FINE
   FROM BORROW
   WHERE BORROWID = 'BR003';

   -- Nested IF
   IF VK_AVAILABLE > 0 THEN

      IF VK_TOTALBORROWED < 5 THEN

         IF VK_FINE = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Issue Approved');
         ELSE
            DBMS_OUTPUT.PUT_LINE('Clear Pending Fine');
         END IF;

      ELSE
         DBMS_OUTPUT.PUT_LINE('Borrow Limit Reached');
      END IF;

   ELSE
      DBMS_OUTPUT.PUT_LINE('Book Not Available');
   END IF;

END;
/
