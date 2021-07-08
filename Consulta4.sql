--Ingresos por pelicula
select 
CAST(Pelicula.Pelicula_titulo AS varchar(30)) as Pelicula ,
Pelicula.Pelicula_Precio as Precio_Alquiler_Pelicula,
SUM(Pelicula.Pelicula_Precio) as Ingresos
from Pelicula 
--where CAST(Pelicula.Pelicula_titulo AS VARCHAR(30))='Rapidos y furiosos '
GROUP BY  Pelicula.Pelicula_Precio ,CAST(Pelicula.Pelicula_titulo AS VARCHAR(30))
go