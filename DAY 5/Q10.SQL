/*Management wants to know the average price of books in each category.

Generate the report.*/
SELECT AVG(books_price) AS TOTAL_VALUE ,GENRE FROM BOOKS GROUP BY GENRE ;
COMMIT;
