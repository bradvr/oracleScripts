declare 

--v_salario_max number;
--
--v_region_id number;
--v_country_name varchar(10);

--
v_country_id varchar(2);
begin

--select MAX(e.salary)
--into v_salario_max
--from employees e;

--dbms_output.put_line(v_salario_max);
-- antes era 24000 el salary maximo
--update employees set salary = 23500 where salary =  v_salario_max;

--

--select region_id
--into v_region_id
--from regions
--where region_name = 'Asia';

--v_country_name := 'Korea';

--insert into Countries (country_id,country_name,region_id) 
--values('KR',v_country_name,v_region_id);

--

select country_id
into v_country_id
from countries
where country_name='Korea';

delete from  countries where country_id = v_country_id;

end;

