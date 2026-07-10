/*Several books were moved to new shelves during library renovation.
Update the shelf number for all History books.*/
UPDATE BOOKS 
SET SHELFLOC = 'B3-R2'
WHERE GENRE = 'History';
