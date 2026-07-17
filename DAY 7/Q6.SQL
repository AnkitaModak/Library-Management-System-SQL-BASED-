/*Display members who have borrowed more than one book.

The management wants to identify frequent library users.*/
SELECT
    M.MEMBERID,
    M.MEMBERNAME
FROM MEMBERS M
JOIN BORROW BR
ON M.MEMBERID = BR.MEMBERID
GROUP BY
    M.MEMBERID,
    M.MEMBERNAME
HAVING COUNT(BR.BORROWID) > 1;
