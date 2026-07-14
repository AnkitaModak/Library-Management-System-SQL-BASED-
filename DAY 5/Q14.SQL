/*The finance department wants to know which categories have an average book price greater than ₹700.

Prepare the report.*/
SELECT AVG(books_price)AS AVG_BOOKS_PRICE ,GENRE FROM BOOKS   GROUP BY GENRE HAVING AVG(books_price) > 700;
