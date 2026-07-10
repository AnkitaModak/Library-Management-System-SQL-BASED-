/*Borrowing records from an old testing session are no longer required.

Remove only the records belonging to the year 2023.*/
DELETE FROM BORROW WHERE BORROWDATE   LIKE '%2023';
