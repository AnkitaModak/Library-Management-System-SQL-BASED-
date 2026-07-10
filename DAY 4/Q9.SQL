/*
The library plans to register international members in the future.
Some international phone numbers are longer than the current limit.
Modify the phone number column so that longer phone numbers can be stored.
*/
ALTER TABLE MEMBERS
MODIFY  PHONENO VARCHAR2(20);
