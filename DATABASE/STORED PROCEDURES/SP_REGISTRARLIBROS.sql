USE [BD_BIBLIOTECANACIONAL]
GO
-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,20-06-2023>
-- Description:	<Description,REGISTRAR NUEVOS LIBROS>
-- =============================================
CREATE PROCEDURE SP_RegistrarLibros
@isbn VARCHAR(12),@nombre VARCHAR(100),@autor VARCHAR(12),@editorial VARCHAR(100),@fechaPublicacion DATE,@cantidadEjemplares INT
AS BEGIN
	INSERT INTO [TBL_LIBROS](PK_ISBN,NOMBRE,AUTOR,EDITORIAL,FECHA_PUBLICACION,FK_ESTADO,CANTIDAD_EJEMPLARES)
	VALUES(@isbn,@nombre,@autor,@editorial,@fechaPublicacion,'1',@cantidadEjemplares)
END


exec SP_RegistrarLibros '155481','El libro de los caidos','Frank Herbert','El universal','02-10-1999',500
SELECT * FROM [TBL_LIBROS]


exec SP_RegistrarLibros '155481515','El libro de los caidos','Frank Herbert','El universal','02-10-1999',500
SELECT * FROM [TBL_LIBROS]