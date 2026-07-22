/*Declare variables:

Library Name
Total Books
Total Members

Display all three values.*/
DECLARE
    library_name VARCHAR2(20);
    total_books NUMBER;
    total_members NUMBER;
BEGIN 
    library_name := 'ABC BOOK LIBRARY';
    SELECT
    COUNT(BOOKID)
    INTO total_books
    FROM
    BOOKS;
    SELECT 
    COUNT(MEMBERID)
    INTO total_members 
    FROM 
    MEMBERS;
    DBMS_OUTPUT.PUT_LINE(
    'Library: ' || library_name ||
    ' Total Books: ' || total_books ||
    ' Total Members: ' || total_members
);
END;
/
