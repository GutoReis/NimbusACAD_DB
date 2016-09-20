CREATE TABLE [dbo].[Negocio_Doc_Devente]
(
	[Documento_ID]		INT		NOT NULL,
	[Matricula_ID]		INT		NOT NULL,
	PRIMARY KEY CLUSTERED([Documento_ID],[Matricula_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Doc_Devente_dbo.Negocio_Documento_Documento_ID] FOREIGN KEY ([Documento_ID])
		REFERENCES [dbo].[Negocio_Documento] ([Documento_ID]),
	CONSTRAINT [FK_dbo.Negocio_Doc_Devente_dbo.Negocio_Matricula_Aluno_Matricula_ID] FOREIGN KEY ([Matricula_ID])
		REFERENCES [dbo].[Negocio_Matricula_Aluno] ([Matricula_ID])
)
