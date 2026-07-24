/*At the end of the day, the librarian closes shelves in reverse order, starting from Shelf 10 down to Shelf 1.

Print:

Closing Shelf 10
Closing Shelf 9
...
Closing Shelf 1*/
BEGIN 
    FOR I IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('CLOSING SHELF ' || I);
    END LOOP;
END;
/
