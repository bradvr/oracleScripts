declare

--v_job jobs%rowtype;
--v_desc jobs.job_title%type;
--v_min_salary jobs.min_salary%type;
----
v_new_job jobs%rowtype;

begin
--select j.*
--into v_job
--from jobs j
--where j.job_id = 'IT_PROG';

--v_desc := v_job.job_title;
--v_min_salary := v_job.min_salary;

--DBMS_OUTPUT.PUT_LINE('El trabajo '||v_desc||' cobra como minimo '||v_min_salary);
----

v_new_job.job_id := 'DBA';
v_new_job.job_title := 'DB Admin';
v_new_job.min_salary := 7000;
v_new_job.max_salary := 11000;

--insert into jobs values v_new_job;
update jobs set row = v_new_job where job_id = 'DBA';


end;

