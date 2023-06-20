USE [BD_BIBLIOTECAWEB]
GO
-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,20-06-2023>
-- Description:	<Description,REGISTRAR NUEVOS LIBROS>
-- =============================================
CREATE PROCEDURE SP_RegistrarLibros
@nombre VARCHAR(100),@FK_Autor BIGINT,@editorial VARCHAR(100),@fechaPublicacion DATE,@FKEstado CHAR,@cantidadEjemplares INT
AS BEGIN
	DECLARE @encuentra INT
	SELECT @encuentra = (SELECT COUNT(*) FROM [TBL_LIBROS] WHERE [PK_ISBN] = [PK_ISBN])
	IF @encuentra = 0
		BEGIN
			INSERT INTO [TBL_LIBROS]
			(NOMBRE,FK_AUTOR,EDITORIAL,FECHA_PUBLICACION,FK_ESTADO,CANTIDAD_EJEMPLARES)
			VALUES
			(@nombre,@FK_Autor,@editorial,@fechaPublicacion,@FKEstado,@cantidadEjemplares)
		END
	IF @encuentra = 1
		BEGIN
			PRINT 'ESTE LIBRO YA SE ENCUENTRA REGISTRADO EN LA BASE DE DATOS'
		END
END