CREATE TABLE [dbo].[Negocio_Documento]
(
	[Documento_ID]		INT IDENTITY(1,1),
	[Documento_Nome]	NVARCHAR(60)		NOT NULL,
	PRIMARY KEY CLUSTERED ([Documento_ID] ASC)
)
