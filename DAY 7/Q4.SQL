/*The librarian wants a list of members who have borrowed at least one book.

Display:

Member ID
Member Name*/
SELECT 
M.MEMBERID,M.MEMBERNAME
FROM MEMBERS M 
INNER JOIN BORROW BR ON m.memberid = br.memberid;
