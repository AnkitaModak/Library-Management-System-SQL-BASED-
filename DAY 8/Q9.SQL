/*Searching books by title has become slow.

Create an index on the Book Title column.*/
CREATE INDEX IDX_BOOKTITLE
ON BOOKS(BOOKTITLE);
