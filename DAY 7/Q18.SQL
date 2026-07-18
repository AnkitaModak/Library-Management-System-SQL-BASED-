/*The Library Director wants to identify members who have borrowed books from every available category in the library.

Prepare the report.*/
SELECT
    m.memberid,
    m.membername
FROM members m
INNER JOIN borrow br
    ON m.memberid = br.memberid
INNER JOIN books b
    ON br.bookid = b.bookid
GROUP BY
    m.memberid,
    m.membername
HAVING COUNT(DISTINCT b.GENRE) =
(
    SELECT COUNT(DISTINCT GENRE)
    FROM books
);
