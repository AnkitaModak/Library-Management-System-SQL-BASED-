/*The librarian wants to retrieve one book title, but the query accidentally returns multiple books. The application should handle this situation and display:

More than one record found*/
DECLARE
   V_TITLE BOOKS.BOOKTITLE%TYPE;
BEGIN
   SELECT BOOKTITLE
   INTO V_TITLE
   FROM BOOKS
   WHERE GENRE = 'Programming';

   DBMS_OUTPUT.PUT_LINE(V_TITLE);

EXCEPTION
   WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('More than one record found');
END;
/
