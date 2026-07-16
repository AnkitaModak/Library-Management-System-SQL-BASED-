/*Generate a complete catalogue displaying:

Book Title
Author Name
Publisher
Category
Price
Shelf Number

Arrange the catalogue alphabetically by book title.*/
SELECT 
B.BOOKTITLE,
A.AUTHNAME,
B.PUBLISHER,
B.GENRE,
B.BOOKS_PRICE,
B.SHELFLOC
FROM BOOKS B 
INNER JOIN AUTHORS A ON A.AUTHID = B.BOOKAUTH
ORDER BY B.BOOKTITLE ASC;
