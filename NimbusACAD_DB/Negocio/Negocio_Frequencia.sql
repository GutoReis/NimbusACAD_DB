CREATE TABLE [dbo].[Negocio_Frequencia]
(
	[Frequencia_ID]			INT IDENTITY(1,1),
	[Disciplina_ID]			INT					NOT NULL,
	[Funcionario_ID]		INT					NOT NULL,
	[Dt_Aula]				DATE				NULL,
	[Qtde_Aula]				INT					NULL,
	[Aula_Ministrada]		NVARCHAR(MAX)		NULL,
	[Matricula_ID]			INT					NOT NULL,
	PRIMARY KEY CLUSTERED([Frequencia_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Frequencia_dbo.Negocio_Disciplina_Disciplina_ID] FOREIGN KEY ([Disciplina_ID])
		REFERENCES [dbo].[Negocio_Disciplina] ([Disciplina_ID]),
	CONSTRAINT [FK_dbo.Negocio_Frequencia_dbo.Negocio_Funcionario_Professor_ID] FOREIGN KEY ([Funcionario_ID])
		REFERENCES [dbo].[Negocio_Funcionario] ([Funcionario_ID]),
	CONSTRAINT [FK_dbo.Negocio_Frequencia_dbo.Matricula_Aluno_Matricula_ID] FOREIGN KEY ([Matricula_ID])
		REFERENCES [dbo].[Negocio_Matricula_Aluno] ([Matricula_ID])
)
