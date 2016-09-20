CREATE TABLE [dbo].[Negocio_Curriculo]
(
	[Curriculo_ID]		INT IDENTITY(1,1),
	[Pessoa_ID]			INT					NOT NULL,
	[Documento_ID]		INT					NOT NULL,
	[Orgao_Emissor]		NVARCHAR(50)		NULL,
	[Dt_Emissao]		DATE				NULL,
	[Cidade_Emissao]	NVARCHAR(30)		NULL,
	[Estado_Emissao]	NVARCHAR(2)			NULL,
	[Pais_Emissao]		NVARCHAR(30)		NULL,
	PRIMARY KEY CLUSTERED ([Curriculo_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Curriculo_dbo.Negocio_Pessoa_Pessoa_ID] FOREIGN KEY ([Pessoa_ID])
		REFERENCES [dbo].[Negocio_Pessoa] ([Pessoa_ID]),
	CONSTRAINT [FK_dbo.Negocio_Curriculo_dbo.Negocio_Documento_Documento_ID] FOREIGN KEY ([Documento_ID])
		REFERENCES [dbo].[Negocio_Documento] ([Documento_ID])
)
