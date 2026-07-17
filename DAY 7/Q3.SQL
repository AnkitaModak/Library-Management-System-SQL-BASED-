/*The committee wants to know which books are more expensive than every book in the Mathematics category.

Display:

Book Title
Price*/
SELECT 
BOOKID,
BOOKTITLE,
BOOKS_PRICE
FROM BOOKS
WHERE BOOKS_PRICE =
(SELECT MAX(BOOKS_PRICE)
FROM BOOKS);
