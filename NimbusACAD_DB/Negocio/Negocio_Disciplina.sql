CREATE TABLE [dbo].[Negocio_Disciplina]
(
	[Disciplina_ID]			INT IDENTITY(1,1),
	[Modulo_ID]				INT					NOT NULL,
	[Disciplina_Nome]		NVARCHAR(30)		NULL,
	[Descricao]				NVARCHAR(MAX)		NULL,
	[Funcionario_ID]		INT					NOT NULL,
	[Tot_Aulas_Dadas]		INT					NULL,
	[Carga_Horaria]			INT					NULL,
	PRIMARY KEY CLUSTERED ([Disciplina_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Disciplina_dbo.Negocio_Modulo_Modulo_ID] FOREIGN KEY ([Modulo_ID])
		REFERENCES [dbo].[Negocio_Modulo] ([Modulo_ID]),
	CONSTRAINT [FK_dbo.Negocio_Disciplina_dbo.Negocio_Funcionario_Professor_ID] FOREIGN KEY ([Funcionario_ID])
		REFERENCES [dbo].[Negocio_Funcionario] ([Funcionario_ID])
)
