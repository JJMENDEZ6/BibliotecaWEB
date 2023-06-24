select PK_CODIGO, NOMBRE from TBL_ESTADO where PK_CODIGO >= 1 and PK_CODIGO <= 2
select PK_CODIGO, NOMBRE from TBL_ESTADO where PK_CODIGO between 1 and 2

USE [BD_BIBLIOTECANACIONAL]
GO
-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,17-06-2023>
-- Description:	<Description,-CONSULTAR ESTADO DISPONIBLE Y NO DISPONIBLE- EN LA TABLA -TBL_ESTADO->
-- =============================================
CREATE PROCEDURE SP_ConsultarEstado
AS BEGIN
	SELECT [NOMBRE] FROM [TBL_ESTADO] WHERE [PK_CODIGO] BETWEEN 1 AND 3
END

DECLARE @encuentra INT
	SELECT @encuentra = (SELECT COUNT(*) FROM [TBL_LIBROS] WHERE [PK_ISBN] = [PK_ISBN])
	IF @encuentra = 0
IF @encuentra = 1
		BEGIN
			PRINT 'ESTE LIBRO YA SE ENCUENTRA REGISTRADO EN LA BASE DE DATOS'
		END