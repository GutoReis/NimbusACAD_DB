CREATE TABLE [dbo].[Negocio_Quadro_Horario]
(
	[Quadro_Horario_ID]		INT IDENTITY(1,1),
	[Disciplina_ID]			INT					NOT NULL,
	[Dia_Semana]			NVARCHAR(15)		NULL,
	[Hora_Inicio]			TIME				NULL,
	[Hora_Fim]				TIME				NULL,
	PRIMARY KEY CLUSTERED ([Quadro_Horario_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Quadro_Horario_dbo.Negocio_Disciplina_Disciplina_ID] FOREIGN KEY ([Disciplina_ID])
		REFERENCES [dbo].[Negocio_Disciplina] ([Disciplina_ID])
)
