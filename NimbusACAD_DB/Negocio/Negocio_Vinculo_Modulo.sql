CREATE TABLE [dbo].[Negocio_Vinculo_Modulo]
(
	[Vinculo_ID]		INT IDENTITY(1,1),
	[Modulo_ID]			INT					NOT NULL,
	[Matricula_ID]		INT					NOT NULL,
	[Status_Vinculo]	VARCHAR(10)			NULL,
	PRIMARY KEY CLUSTERED ([Modulo_ID],[Matricula_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Vinculo_Modulo_dbo.Negocio_Modulo_Modulo_ID] FOREIGN KEY ([Modulo_ID])
		REFERENCES [dbo].[Negocio_Modulo] ([Modulo_ID]),
	CONSTRAINT [FK_dbo.Negocio_Vinculo_Modulo_dbo.Negocio_Matricula_Aluno_Matricula_ID] FOREIGN KEY ([Matricula_ID])
		REFERENCES [dbo].[Negocio_Matricula_Aluno] ([Matricula_ID])
)
