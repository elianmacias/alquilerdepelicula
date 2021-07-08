--Cuantas veces ha sido alquilada cada pelicula
select 
CAST(Pelicula.Pelicula_titulo AS varchar(30)) as Pelicula ,
count(Alquiler.Aqluiler_id) as Numero_alquileres
from Pelicula
inner join Alquiler on Alquiler.Aqluiler_id=Pelicula.Aqluiler_id
group by CAST(Pelicula.Pelicula_titulo AS varchar(30))
go