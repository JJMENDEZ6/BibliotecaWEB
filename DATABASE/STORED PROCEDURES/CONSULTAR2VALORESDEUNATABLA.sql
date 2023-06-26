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
	SELECT [PK_CODIGO],[NOMBRE] FROM [TBL_ESTADO] WHERE [PK_CODIGO] BETWEEN 1 AND 3
END

DECLARE @encuentra INT
	SELECT @encuentra = (SELECT COUNT(*) FROM [TBL_LIBROS] WHERE [PK_ISBN] = [PK_ISBN])
	IF @encuentra = 0
IF @encuentra = 1
		BEGIN
			PRINT 'ESTE LIBRO YA SE ENCUENTRA REGISTRADO EN LA BASE DE DATOS'
		END
		
		
		
USE [BD_BIBLIOTECANACIONAL]
GO
-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,06-26-2023>
-- Description:	<Description,CONSULTAR ESTADOS DE LOS USUARIOS>
-- =============================================
CREATE PROCEDURE SP_ConsultarEstado2
AS BEGIN
	SELECT [PK_CODIGO],[NOMBRE] FROM [TBL_ESTADO] WHERE [PK_CODIGO] BETWEEN 4 AND 6
END


-- =============================================
-- Author:		<Author,JJMENDEZ>
-- Create date: <Create Date,06-26-02023>
-- Description:	<Description,REGISTRAR USUARIOS>
-- =============================================
CREATE PROCEDURE SP_RegistrarUsuarios
@nombres VARCHAR(100),@apellidos VARCHAR(100),@contacto VARCHAR(10),@direccion VARCHAR(200),@correo VARCHAR(255)
AS BEGIN
	INSERT INTO[TBL_USUARIOS](NOMBRES,APELLIDOS,CONTACTO,DIRECCION,CORREO,FK_ESTADO)
	VALUES(@nombres,@apellidos,@contacto,@direccion,@correo,'4')
END
EXEC SP_RegistrarUsuarios 'Jhaminton','Mendez','3103559459','Malambo','thejjmendez@gmail.com'
SELECT * FROM [TBL_USUARIOS]
SELECT * FROM [TBL_ESTADO]

SELECT [TBL_USUARIOS].[PK_ID],[TBL_USUARIOS].[NOMBRES],[TBL_ESTADO].[NOMBRE]
FROM [TBL_USUARIOS],[TBL_ESTADO]
WHERE [PK_ID] = '1002235366' AND [PK_CODIGO] = [FK_ESTADO]