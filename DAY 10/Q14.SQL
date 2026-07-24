/*The library accountant is calculating the average fine per member. If the number of members is 0, the program should not terminate unexpectedly. Instead, display:

Division by Zero Not Allowed*/
SET SERVEROUTPUT ON;

DECLARE
   VK_TOTAL_FINE    NUMBER := 500;
   VK_MEMBER_COUNT  NUMBER := 0;
   VK_AVG_FINE      NUMBER;
BEGIN
   VK_AVG_FINE := VK_TOTAL_FINE / VK_MEMBER_COUNT;

   DBMS_OUTPUT.PUT_LINE('Average Fine: ' || VK_AVG_FINE);

EXCEPTION
   WHEN ZERO_DIVIDE THEN
      DBMS_OUTPUT.PUT_LINE('Division by Zero Not Allowed');
END;
/
