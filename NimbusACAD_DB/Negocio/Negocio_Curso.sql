CREATE TABLE [dbo].[Negocio_Curso]
(
	[Curso_ID]			INT IDENTITY(1,1),
	[Curso_Nome]		NVARCHAR(30)		NULL,
	[Descricao]			NVARCHAR(MAX)		NULL,
	[Periodo]			NVARCHAR(20)		NULL,
	[Funcionario_ID]	INT					NOT NULL,
	[Carga_Horaria]		INT					NULL,
	PRIMARY KEY CLUSTERED ([Curso_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Curso_dbo.Negocio_Funcionario_Coordenador_ID] FOREIGN KEY ([Funcionario_ID])
		REFERENCES [dbo].[Negocio_Funcionario] ([Funcionario_ID])
)
