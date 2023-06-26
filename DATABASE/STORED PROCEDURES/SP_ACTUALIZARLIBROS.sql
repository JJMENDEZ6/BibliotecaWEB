USE [BD_BIBLIOTECANACIONAL]
GO
-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,26-06-2023>
-- Description:	<Description,ACTUALIZAR LIBROS>
-- =============================================
CREATE PROCEDURE SP_ActualizarLibros
@isbn VARCHAR(12), @nombre VARCHAR(100),@autor VARCHAR(50),@editorial VARCHAR(100),@fechaP DATE,@FKEstado CHAR,@cantidad INT
AS BEGIN
	UPDATE [TBL_LIBROS]
	SET
	[NOMBRE] = @nombre,
	[AUTOR] = @autor,
	[EDITORIAL] = @editorial,
	[FECHA_PUBLICACION] = @fechaP,
	[FK_ESTADO] = @FKEstado,
	[CANTIDAD_EJEMPLARES] = @cantidad
	WHERE
	[PK_ISBN] = @isbn
END
