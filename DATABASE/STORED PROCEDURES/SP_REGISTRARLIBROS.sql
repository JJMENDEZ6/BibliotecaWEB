USE [BD_BIBLIOTECANACIONAL]
GO
-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,20-06-2023>
-- Description:	<Description,REGISTRAR NUEVOS LIBROS>
-- =============================================
CREATE PROCEDURE SP_RegistrarLibros
@nombre VARCHAR(100),@autor VARCHAR(12),@editorial VARCHAR(100),@fechaPublicacion DATE,@cantidadEjemplares INT
AS BEGIN
	DECLARE @encuentra INT
	SELECT @encuentra = (SELECT COUNT(*) FROM [TBL_LIBROS] WHERE [PK_ISBN] = [PK_ISBN])
	IF @encuentra = 0
		BEGIN
			INSERT INTO [TBL_LIBROS]
			(NOMBRE,AUTOR,EDITORIAL,FECHA_PUBLICACION,FK_ESTADO,CANTIDAD_EJEMPLARES)
			VALUES
			(@nombre,@autor,@editorial,@fechaPublicacion,'1',@cantidadEjemplares)
		END
	IF @encuentra = 1
		BEGIN
			PRINT 'ESTE LIBRO YA SE ENCUENTRA REGISTRADO EN LA BASE DE DATOS'
		END
END
exec SP_RegistrarLibros 'El libro de los caidos','Frank Herbert','El universal','02-10-1999',500
SELECT * FROM [TBL_LIBROS]