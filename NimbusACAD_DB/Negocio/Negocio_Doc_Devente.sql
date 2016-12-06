CREATE TABLE [dbo].[Negocio_Doc_Devente]
(
	[Doc_Devente_ID]	INT IDENTITY(1,1),
	[Documento_ID]		INT		NOT NULL,
	[Matricula_ID]		INT		NOT NULL,
	CONSTRAINT [PK_dbo.Negocio_Doc_Devente_Doc_Devente_ID] PRIMARY KEY CLUSTERED ([Doc_Devente_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Doc_Devente_dbo.Negocio_Documento_Documento_ID] FOREIGN KEY ([Documento_ID])
		REFERENCES [dbo].[Negocio_Documento] ([Documento_ID]),
	CONSTRAINT [FK_dbo.Negocio_Doc_Devente_dbo.Negocio_Matricula_Aluno_Matricula_ID] FOREIGN KEY ([Matricula_ID])
		REFERENCES [dbo].[Negocio_Matricula_Aluno] ([Matricula_ID])
)
