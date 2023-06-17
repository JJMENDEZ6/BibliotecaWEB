select PK_CODIGO, NOMBRE from TBL_ESTADO where PK_CODIGO >= 1 and PK_CODIGO <= 2
select PK_CODIGO, NOMBRE from TBL_ESTADO where PK_CODIGO between 1 and 2

USE [BD_BIBLIOTECAWEB]
GO
-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,17-06-2023>
-- Description:	<Description,-CONSULTAR ESTADO DISPONIBLE Y NO DISPONIBLE- EN LA TABLA -TBL_ESTADO->
-- =============================================
CREATE PROCEDURE SP_ConsultarEstado
AS BEGIN
	SELECT [NOMBRE] FROM [TBL_ESTADO] WHERE [PK_CODIGO] BETWEEN 1 AND 2
END