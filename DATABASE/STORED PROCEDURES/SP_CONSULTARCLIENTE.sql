CREATE PROCEDURE SP_ConsultarCliente
@id VARCHAR(10)
AS BEGIN
	SELECT
	[Tbl_Inscripciones].[PKNumeroRegistro] AS 'REGISTRO',
	[Tbl_Inscripciones].[PrecioActual] AS 'VALOR',
	[Tbl_Inscripciones].[FechaRegistro] AS 'FECHA INICIO',
	[Tbl_Inscripciones].[FechaTermino] AS 'FECHA FINALIZACIÓN',
	[Tbl_Paquetes].[Descripcion] AS 'PAQUETE',
	[Tbl_Estado].[Nomenclatura] AS 'ESTADO'
	FROM
	[Tbl_Inscripciones],[Tbl_Paquetes],[Tbl_Estado],[Tbl_Cliente]
	WHERE
	[Tbl_Cliente].[PKID] = [Tbl_Inscripciones].[FK_IDCliente] AND
	[Tbl_Estado].[PKCodigo] = [Tbl_Inscripciones].[FK_Estado] AND
	[Tbl_Paquetes].[PKCodigo] = [Tbl_Inscripciones].[FK_CodigoPaquete] AND
	[Tbl_Cliente].[PKID] = @id
END