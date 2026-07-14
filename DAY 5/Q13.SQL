/*The library committee is interested only in categories that contain more than five books.

Display only those categories.*/
SELECT COUNT(bookid)AS TOTAL_BOOKS ,GENRE FROM BOOKS   GROUP BY GENRE HAVING COUNT(BOOKID) > 5;
