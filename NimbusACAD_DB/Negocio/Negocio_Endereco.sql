CREATE TABLE [dbo].[Negocio_Endereco]
(
	[Endereco_ID]		INT	IDENTITY(1,1),
	[CEP]				NVARCHAR(9)			NOT NULL,
	[Complemento]		NVARCHAR(20)		NULL,
	[Numero]			INT					NULL,
	[Ativo]				BIT					NULL,
	[Pessoa_ID]			INT					NOT NULL,
	PRIMARY KEY CLUSTERED ([Endereco_ID] ASC),

	CONSTRAINT [FK_dbo.Negocio_Endereco_dbo.Negocio_Base_Endereco_CEP] FOREIGN KEY ([CEP])
		REFERENCES [dbo].[Negocio_Base_Endereco] ([CEP]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.Negocio_Endereco_dbo.Negocio_Pessoa_Pessoa_ID] FOREIGN KEY ([Pessoa_ID])
		REFERENCES [dbo].[Negocio_Pessoa] ([Pessoa_ID]) ON DELETE CASCADE
)
