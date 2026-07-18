/*The management wants to identify values that appear in both:

Member cities
Author nationalities

Prepare the report.*/
SELECT CITY
FROM MEMBERS
INTERSECT
SELECT NATIONALITY
FROM AUTHORS;
