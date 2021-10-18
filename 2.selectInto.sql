declare 

v_last_name varchar(15);
v_first_name varchar(15);
v_salary number;

begin

select e.last_name, e.first_name, e.salary
into v_last_name, v_first_name, v_salary
from employees e
where e.employee_id = 100;

dbms_output.put_line(v_last_name);
dbms_output.put_line(v_first_name);
dbms_output.put_line(v_salary);

end;

