/*Display the indexes created for your tables.*/
SELECT INDEX_NAME,
       TABLE_NAME
FROM USER_INDEXES
WHERE TABLE_NAME ='MEMBERS' OR TABLE_NAME = 'BOOKS';
