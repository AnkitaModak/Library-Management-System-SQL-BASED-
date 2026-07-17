/*Display books that have never been borrowed.

Include:

Book ID
Book Title
Author Name*/
SELECT
b.bookid,
b.booktitle,
a.authname
FROM AUTHORS A 
INNER JOIN BOOKS B ON B.BOOKAUTH = A.AUTHID
INNER JOIN BORROW BR ON br.bookid = b.bookid
WHERE br.borrowid IS NULL;
