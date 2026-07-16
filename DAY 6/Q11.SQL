/*The HR department wants to see every employee, including employees who have not yet issued any books.

Prepare the report.*/
alter table borrow
add column employee_id VARCHAR2(20);
alter table borrow 
add constraint fk_emp_number
foreign key (employee_id)
references employees(empid);
UPDATE Borrow
SET employee_id =
    CASE borrowid
        WHEN 'BR003' THEN 'E001'
        WHEN 'BR005' THEN 'E002'
        WHEN 'BR009' THEN 'E003'
        WHEN 'BR011' THEN 'E001'
        WHEN 'BR015' THEN 'E004'
        WHEN 'BR019' THEN 'E005'
    END
WHERE borrowid IN ('BR003','BR005','BR009','BR011','BR015','BR019');
select 
e.empid ,
br.borrowid
from employees e
left outer join borrow br on e.empid = br.employee_id;
