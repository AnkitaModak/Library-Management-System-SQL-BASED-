/*Display the number of books published in each publication year.*/
SELECT COUNT(booktitle) aS NOOFBOOKS,publishyear from BOOKS  GROUP BY PUBLISHYEAR;
