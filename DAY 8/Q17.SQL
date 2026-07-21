/*The database administrator notices that users frequently search books by:

Category
Book Title

Recommend and implement an appropriate optimization*/
CREATE INDEX IDX_CATEGORY 
ON BOOKS(GENRE);
CREATE INDEX IDX_BOOKTITLE
ON BOOKS(BOOKTITLE);
