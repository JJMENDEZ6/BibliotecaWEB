CREATE PROCEDURE SP_RegistrarSuscripcion
@FKIDCliente VARCHAR(10),@FKCodigoPaquete BIGINT
AS BEGIN
	DECLARE @FechaInicial DATE
	DECLARE @FechaFinal DATE
	DECLARE @Dias INT
	SET @FechaInicial = GETDATE()
	SET @Dias = 90
	SET @FechaFinal = (SELECT DATEADD(DAY,@Dias,@FechaInicial))
	DECLARE @ValorPaquete FLOAT
	SELECT @ValorPaquete = (SELECT [Precio] FROM [Tbl_Paquetes] WHERE [PKCodigo] = @FKCodigoPaquete)
	INSERT INTO [Tbl_Inscripciones]
	(FK_IDCliente,FechaRegistro,FechaTermino,FK_CodigoPaquete,FK_Estado,PrecioActual)
	VALUES
	(@FKIDCliente,GETDATE(),@FechaFinal,@FKCodigoPaquete,'1',@ValorPaquete)
END