CREATE TABLE [dbo].[Negocio_Modulo]
(
	[Modulo_ID]		INT IDENTITY(1,1),
	[Curso_ID]		INT					NOT NULL,
	[Max_Alunos]	INT					NULL,
	[Tot_Inscritos]	INT					NULL,
	[Carga_Horaria]	INT					NULL,
	PRIMARY KEY CLUSTERED ([Modulo_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Modulo_dbo.Negocio_Curso_Curso_ID] FOREIGN KEY ([Curso_ID])
		REFERENCES [dbo].[Negocio_Curso] ([Curso_ID])
)
