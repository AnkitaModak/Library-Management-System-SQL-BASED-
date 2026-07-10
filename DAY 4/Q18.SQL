/*
Delete every borrowing record where:
the book has already been returned, and
no fine was charged.
*/
DELETE FROM BORROW 
WHERE RETURNDATE IS NOT NULL AND FINEAMT = 0;
