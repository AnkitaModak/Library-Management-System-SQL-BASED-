/*Generate a report showing authors who currently have no books in the library database.*/
SELECT AUTHID ,AUTHNAME FROM AUTHORS WHERE firstpublish IS NULL;
