CREATE TABLE [dbo].[Negocio_Matricula_Aluno]
(
	[Matricula_ID]		INT IDENTITY(1,1),
	[Pessoa_ID]			INT					NOT NULL,
	[Curso_ID]			INT					NOT NULL,
	[Ano]				INT					NULL,
	[Ativo]				BIT					NULL,
	[Deve_Documento]	BIT					NULL,
	PRIMARY KEY ([Matricula_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Matricula_Aluno_dbo.Negocio_Pessoa_Pessoa_ID] FOREIGN KEY ([Pessoa_ID])
		REFERENCES [dbo].[Negocio_Pessoa] ([Pessoa_ID]),
	CONSTRAINT [FK_dbo.Negocio_Matricula_Aluno_dbo.Negocio_Curso_Curso_ID] FOREIGN KEY ([Curso_ID])
		REFERENCES [dbo].[Negocio_Curso] ([Curso_ID])
)
