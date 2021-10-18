declare 

v_job_id employees.job_id%type;

begin

select e.job_id
into v_job_id
from employees e
where e.employee_id = 134;

dbms_output.put_line(v_job_id);
end;

