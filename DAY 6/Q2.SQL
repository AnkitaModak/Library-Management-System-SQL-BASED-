/*The library committee wants to review all authors and the books written by them.

Display:

Author ID
Author Name
Book Title

Every book should appear with its respective author.*/
SELECT 
authors.authid,
authors.authname,
books.booktitle
FROM BOOKS JOIN AUTHORS ON books.bookauth = authors.authid;
