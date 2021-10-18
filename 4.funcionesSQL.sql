declare 

v_last_name varchar2(25);
----
v_last_name_mayuscula varchar2(25);
v_last_name_substring varchar2(25);
v_last_name_replace varchar2(25);
begin

--select lower(e.last_name)
--into v_last_name  
--from employees e
--where employee_id = 100;

--DBMS_OUTPUT.put_line(v_last_name);
----

v_last_name:= 'brad';
v_last_name_mayuscula := upper(v_last_name);
v_last_name_substring := substr(v_last_name_mayuscula,2,3);
v_last_name_replace := replace(v_last_name_mayuscula,'R','D');
DBMS_OUTPUT.put_line(v_last_name_mayuscula);
DBMS_OUTPUT.put_line(v_last_name_substring);
DBMS_OUTPUT.put_line(v_last_name_replace);

end;


