/*The membership department wants a list of members who have never borrowed any book since joining.

Display:

Member ID
Member Name
City*/
SELECT 
M.MEMBERID,M.MEMBERNAME
FROM MEMBERS M 
LEFT OUTER JOIN BORROW BR ON m.memberid = br.memberid
WHERE br.borrowid IS NULL;
