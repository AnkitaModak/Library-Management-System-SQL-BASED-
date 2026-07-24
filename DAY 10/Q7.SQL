/*
The librarian wants to verify the IDs of the first 10 members every morning.

Print:

Checking Member ID: 1
Checking Member ID: 2
...
Checking Member ID: 10
*/
BEGIN 
    FOR I IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('CHECKING MEMBER ID: ' || I);
    END LOOP;
END;
/
