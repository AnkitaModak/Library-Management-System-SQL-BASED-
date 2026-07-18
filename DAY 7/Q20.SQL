/*Generate a report showing:

Book Title
Author Name
Price

Only include books whose price is above the average price of their own category.*/
SELECT 
b.booktitle,
a.authname,
b.books_price
FROM BOOKS B 
INNER JOIN AUTHORS A ON B.BOOKAUTH = A.AUTHID
WHERE BOOKS_PRICE > (
SELECT AVG(BOOKS_PRICE) FROM BOOKS);
