/*The librarian is checking returned books. Display the returned book numbers, but stop checking after the fifth returned book.

Print:

Returned Book: 1
Returned Book: 2
Returned Book: 3
Returned Book: 4
Returned Book: 5*/
DECLARE 
    I NUMBER := 1;
BEGIN 
    LOOP
        DBMS_OUTPUT.PUT_LINE('RETURNED BOOK: ' || I);
        EXIT WHEN I=5;
        I:=I+1;
    END LOOP;
END;
/
