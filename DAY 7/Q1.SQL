/*The purchasing committee wants a list of books that are more expensive than the average price of all books.

Prepare the report displaying:

Book ID
Book Title
Category
Price*/
SELECT 
bookid,
booktitle,
genre,
books_price
FROM BOOKS
WHERE  books_price >(
SELECT AVG(BOOKS_PRICE) 
FROM BOOKS);
