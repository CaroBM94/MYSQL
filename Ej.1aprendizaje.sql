select * from empleados; # 1
select * from departamentos; #2
select nombre_depto from departamentos; #3
select nombre, sal_emp from empleados; #4
select comision_emp from empleados; #5
select * from empleados where cargo_emp like 'Secretaria'; #6
select * from empleados where cargo_emp = 'vendedor' order by nombre asc;#7
# 8 Obtener el nombre y cargo de todos los empleados, ordenados por salario de menor a mayor
select nombre, cargo_emp, sal_emp from empleados order by sal_emp asc;
# 9 Obtener el nombre de o de los jefes que tengan su departamento situado en la ciudad de “Ciudad Real”
select nombre_jefe_depto, ciudad from departamentos where ciudad = 'Ciudad Real';
# 10 Elabore un listado donde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ para las respectivas tablas de empleados
select nombre as Nombre, cargo_emp as Cargo from empleados;
# 11 Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión de menor a mayor.
select id_depto,nombre, sal_emp, comision_emp from empleados where id_depto = 2000 order by comision_emp asc;
# 12 Obtener el valor total a pagar a cada empleado del departamento 3000, que resulta 
# de: sumar el salario y la comisión, más una bonificación de 500. Mostrar el nombre del
# empleado y el total a pagar, en orden alfabético.
select nombre,id_depto, (sal_emp + comision_emp + 500) as sueldoFinal from empleados where id_depto = 3000 order by nombre asc;
# 13 Muestra los empleados cuyo nombre empiece con la letra J
select nombre from empleados where nombre like 'J%';
# 14 Listar el salario, la comisión, el salario total (salario + comisión) y nombre, de aquellos
# empleados que tienen comisión superior a 1000.
select	nombre, sal_emp, comision_emp, (sal_emp + comision_emp) as salarioTotal from empleados where comision_emp > 1000;
# 15 Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión.
select nombre, sal_emp, comision_emp from empleados where comision_emp = 0;
# 16 Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
select nombre, sal_emp, comision_emp from empleados where comision_emp > sal_emp;
# 17 Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
select nombre, sal_emp, comision_emp from empleados where comision_emp <= (sal_emp*0.30);
# 18 Hallar los empleados cuyo nombre no contiene la cadena “MA”
select nombre from empleados where nombre not like '%MA%';
# 19 Obtener los nombres de los departamentos que sean “Ventas”, “Investigación” o ‘Mantenimiento.
select nombre_depto from departamentos where nombre_depto = 'Ventas' or nombre_depto = 'Investigacion' or nombre_depto = 'Mantenimiento';
# 20 Ahora obtener el contrario, los nombres de los departamentos que no sean “Ventas” ni “Investigación” ni ‘Mantenimiento
select nombre_depto from departamentos where nombre_depto not like 'Ventas' and nombre_depto not like 'Investigacion' and nombre_depto not like 'Mantenimiento';
select nombre_depto from departamentos where nombre_depto not in ("Ventas","Investigación","Mantenimiento");
# 21 Mostrar el salario más alto de la empresa
select max(sal_emp) as salarioMAx from empleados;
SELECT * FROM empleados WHERE sal_emp = (SELECT MAX(sal_emp) from empleados);
# 22 Mostrar el nombre del último empleado de la lista por orden alfabético.
select nombre from empleados order by nombre desc limit 10;
# 23 Hallar el salario más alto, el más bajo y la diferencia entre ellos.
select max(sal_emp) as salarioMax, min(sal_emp) as salarioMin, (max(sal_emp)-min(sal_emp))as diferencia from empleados;
# 24 Hallar el salario promedio por departamento
select nombre_depto , round(avg(sal_emp)) as promedio from empleados JOIN departamentos on empleados.id_depto = departamentos.id_depto group by nombre_depto;
#SELECT d.nombre_depto,AVG(e.sal_emp) as salarioPromedio from departamentos d JOIN empleados e ON d.id_depto = e.id_depto group by d.nombre_depto;
# HAVING
#25 Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de esos departamentos.
select count(id_depto), cargo_emp from empleados group by cargo_emp having count(id_depto)>=3;
#26 Hallar los departamentos que no tienen empleados
select count(id_depto), cargo_emp from empleados group by cargo_emp having count(id_depto)=0;
# 27 Mostrar la lista de empleados, con su respectivo departamento y el jefe de cada departamento.
select nombre, empleados.id_depto,nombre_jefe_depto from empleados inner join departamentos on empleados.id_depto = departamentos.id_depto;
# SUBCONSULTA
# 28 Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la
# empresa. Ordenarlo por departamento.
select * from empleados WHERE sal_emp >= (select avg(sal_emp) from empleados) ORDER BY id_depto;
select format(avg(sal_emp),0) from empleados;