CREATE TABLE [dbo].[Negocio_Notificacao]
(
	[Notificacao_ID]		INT IDENTITY(1,1),
	[Pessoa_Emissor_ID]		INT					NOT NULL,
	[Pessoa_Receptor_ID]	INT					NOT NULL,	
	[Assunto]				NVARCHAR(50)		NULL,
	[Corpo]					NVARCHAR(MAX)		NULL,
	[Lida]					BIT					NULL,
	PRIMARY KEY CLUSTERED ([Notificacao_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Notifcacao_dbo.Negocio_Pessoa_Pessoa_Emissor_ID] FOREIGN KEY([Pessoa_Emissor_ID])
		REFERENCES [dbo].[Negocio_Pessoa] ([Pessoa_ID]) ON DELETE NO ACTION,
	CONSTRAINT [FK_dbo.Negocio_Notifcacao_dbo.Negocio_Pessoa_Pessoa_Receptor_ID] FOREIGN KEY([Pessoa_Receptor_ID])
		REFERENCES [dbo].[Negocio_Pessoa] ([Pessoa_ID]) ON DELETE NO ACTION
)
