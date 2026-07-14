/*The manager wants to know how many members are registered from each city.

Generate a city-wise report.*/
SELECT COUNT(memberid)AS NOOFMEMBERS ,CITY FROM MEMBERS GROUP BY CITY;
