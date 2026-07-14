/*Display only publishers that have supplied more than two books to the library.*/
SELECT COUNT(NOOFCOPIES) aS totalBooksSold ,publisher from BOOKS GROUP BY publisher HAVING COUNT(noofcopies)>2;
