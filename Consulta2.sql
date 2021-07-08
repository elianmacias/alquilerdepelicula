--Listado por cada tipo de observacion 
select
CAST(Observacion.Observacion_Calificacion AS varchar(10)) as Calificacion ,
count(Observacion.Observacion_id) as Cantidad_Calificacion
from Observacion
group by CAST(Observacion.Observacion_Calificacion AS varchar(10))
go