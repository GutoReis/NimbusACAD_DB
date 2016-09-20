CREATE TABLE [dbo].[Negocio_Funcionario]
(
	[Funcionario_ID]	INT IDENTITY(1,1),
	[Pessoa_ID]			INT					NOT NULL,
	[Cargo_ID]			INT					NOT NULL,
	PRIMARY KEY CLUSTERED ([Funcionario_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Funcionario_dbo.Negocio_Pessoa_Pessoa_ID] FOREIGN KEY ([Pessoa_ID])
		REFERENCES [dbo].[Negocio_Pessoa] ([Pessoa_ID]),
	CONSTRAINT [FK_dbo.Negocio_Funcionario_dbo.Negocio_Tipo_Funcionario_Cargo_ID] FOREIGN KEY ([Cargo_ID])
		REFERENCES [dbo].[Negocio_Tipo_Funcionario] ([Tipo_Funcionario_ID])
)
