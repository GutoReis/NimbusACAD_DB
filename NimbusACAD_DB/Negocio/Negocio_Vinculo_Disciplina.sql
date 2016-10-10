CREATE TABLE [dbo].[Negocio_Vinculo_Disciplina]
(
	[Vinculo_ID]		INT IDENTITY(1,1),
	[Disciplina_ID]		INT					NOT NULL,
	[Matricula_ID]		INT					NOT NULL,
	[Nota1]				FLOAT				NULL,
	[Nota2]				FLOAT				NULL,
	[Media_Final]		FLOAT				NULL,
	[Frequencia]		INT					NULL,
	[Num_Chamada]		INT					NULL,
	PRIMARY KEY CLUSTERED ([Disciplina_ID], [Matricula_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Vinculo_Disciplina_dbo.Negocio_Disciplina_Disciplina_ID] FOREIGN KEY ([Disciplina_ID])
		REFERENCES [dbo].[Negocio_Disciplina] ([Disciplina_ID]),
	CONSTRAINT [FK_dbo.Negocio_Vinculo_Disciplina_dbo.Negocio_Matricula_Aluno_Matricula_ID] FOREIGN KEY ([Matricula_ID])
		REFERENCES [dbo].[Negocio_Matricula_Aluno] ([Matricula_ID])
)
