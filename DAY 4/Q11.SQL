/*One book was entered into the database twice by mistake.
Remove the incorrect record without affecting the original entry.*/
DELETE FROM BOOKS
WHERE BOOKID NOT IN(
        SELECT MIN(BOOKID)
        FROM MEMBERS 
        GROUP BY BOOKID);
