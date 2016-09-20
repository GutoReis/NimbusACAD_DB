CREATE TABLE [dbo].[RBAC_Usuario]
(
	[Usuario_ID]		INT IDENTITY(1,1),
	[Pessoa_ID]			INT					NULL,
	[Username]			NVARCHAR(50)		NULL,
	[Senha_Hash]		NVARCHAR(MAX)		NULL,
	[Salt]				NVARCHAR(MAX)		NULL,
	[Dt_Criacao]		DATE				NULL,
	[Dt_Ultima_Modif]	DATE				NULL,
	[Bloqueado]			BIT					NULL,
	PRIMARY KEY CLUSTERED ([Usuario_ID] ASC),

	CONSTRAINT [FK_dbo.RBAC_Usuario_dbo.Negocio_Pessoa_Pessoa_ID] FOREIGN KEY ([Pessoa_ID])
		REFERENCES [dbo].[Negocio_Pessoa] ([Pessoa_ID])
)
