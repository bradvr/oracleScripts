declare

v_fecha date;
v_fecha2 date;
v_last_date date;
v_diferencia number;
v_fecha_string varchar(10);
v_fecha_convertida date;
v_fecha_recortada varchar(10);
v_numero_decimal number;
v_numero_decimal_trunc number;
v_numero_decimal2 number;
v_comision varchar(25);
begin

--v_fecha := sysdate;
v_fecha := date'2000-12-25';
v_fecha2 := date'2001-02-28';
v_last_date := last_day(v_fecha);
v_diferencia := months_between(v_fecha2,v_fecha);
v_fecha_string := '10/12/2000';
v_fecha_convertida :=  to_Date(v_fecha_string,'dd/mm/yyyy');
v_fecha_convertida := v_fecha_convertida + 1;
v_fecha_recortada := to_char(v_fecha_convertida,'dd-mm');
v_numero_decimal := 10.3432;
v_numero_decimal_trunc := trunc(v_numero_decimal)+1;
v_numero_decimal2 := round(v_numero_decimal);


select nvl(to_char(e.commission_pct),'No tiene comision')
into v_comision
from employees e
where e.employee_id = 129; -- 129 149

dbms_output.put_line(v_fecha);
dbms_output.put_line(v_last_date);
dbms_output.put_line(v_diferencia);
dbms_output.put_line(v_diferencia);
dbms_output.put_line(v_fecha_convertida);
dbms_output.put_line(v_fecha_recortada);
dbms_output.put_line(v_numero_decimal_trunc);
dbms_output.put_line(v_numero_decimal2);
dbms_output.put_line(v_comision);


end;