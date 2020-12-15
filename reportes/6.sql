
select u.cedula,u.FOTO,u.PRIMER_NOMBRE,u.SEGUNDO_NOMBRE,u.PRIMER_APELLIDO,u.SEGUNDO_APELLIDO,d.UBICACION_EXACTA,e.NOMBRE,p.LOGO,p.DATOS_EMPRESA.NOMBRE from USUARIOS u
inner join DIRECCIONES D on u.CEDULA = D.ID_USUARIO
inner join LUGARES z on z.ID = D.ID_LUGAR
inner join LUGARES m on z.ID_PERTENECE=m.ID
inner join LUGARES e on m.ID_PERTENECE=e.ID
inner join REGISTROS r on r.ID_USUARIO=u.CEDULA
inner join PROVEEDORES p on p.ID=r.ID_PROVEEDOR;