/*Display the borrowing history of every member in chronological order.

Include:

Member Name
Book Title
Borrow Date
Return Date*/
SELECT 
m.membername,
b.booktitle,
br.borrowdate,
br.returndate
FROM MEMBERS M 
INNER JOIN BORROW BR ON M.MEMBERID = BR.MEMBERID
INNER JOIN BOOKS B ON B.BOOKID = BR.BOOKID
ORDER BY br.borrowdate ASC;
