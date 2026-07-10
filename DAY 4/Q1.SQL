/*The price of all Programming books has increased by 10% due to higher publishing costs.

Update the database accordingly.*/
UPDATE BOOKS 
SET PRICE =PRICE +(PRICE *(10/100))
WHERE GENRE = 'Programming';
