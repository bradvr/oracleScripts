declare 
--aqui las variables
mi_texto varchar(20);
edad number;
f_nacimiento date;
acepta_terminos_condiciones boolean;
edad2 number not null := 10;
edad3 constant date :=date'1992-12-10';

begin 

mi_texto:= 'Hola mundo';
-- Es para que me pida poner un string
mi_texto := &mivalor;

edad:= 28;
f_nacimiento:= date'1992-12-10';
acepta_terminos_condiciones:= true;



dbms_output.put_line('Mi texto: '||mi_texto);
dbms_output.put_line('Mi fecha: '||f_nacimiento);
dbms_output.put_line('Mi edad: '||edad);

end;
