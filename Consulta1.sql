--Cada cliente por cuantos empleados es atendido

select 
Cliente.Cliente_id,
CAST(Cliente.Cliente_nombre AS varchar(10)) as Nombre_Cliente,
CAST(Cliente.Cliente_Apellido AS varchar(10)) as Apellidos_Cliente,
COUNT(Alquiler.Empleado_id) AS Numero_Empleado
from Cliente
inner join Alquiler on Cliente.Cliente_id=Alquiler.Cliente_id
inner join Empleado on Empleado.Empleado_id = Alquiler.Empleado_id
group by  Cliente.Cliente_id,CAST(Cliente.Cliente_nombre AS varchar(10)),CAST(Cliente.Cliente_Apellido AS varchar(10))
order by CAST(Cliente.Cliente_nombre AS varchar(10))
go