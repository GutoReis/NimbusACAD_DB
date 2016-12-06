CREATE TABLE [dbo].[RBAC_Link_Perfil_Permissao]
(
	[Link_ID]		INT	IDENTITY(1,1),
	[Perfil_ID]		INT		NOT NULL,
	[Permissao_ID]	INT		NOT NULL,
	CONSTRAINT [PK_dbo.RBAC_Link_Perfil_Permissao_Link_ID] PRIMARY KEY CLUSTERED ([Link_ID] ASC),

	CONSTRAINT [FK_dbo.RBAC_Link_Perfil_Permissao_dbo.RBAC_Perfil_Perfil_ID] FOREIGN KEY ([Perfil_ID])
		REFERENCES [dbo].[RBAC_Perfil] ([Perfil_ID]),
	CONSTRAINT [FK_dbo.RBAC_Link_Perfil_Permissao_dbo.RBAC_Permissao_Permissaro_ID] FOREIGN KEY ([Permissao_ID])
		REFERENCES [dbo].[RBAC_Permissao] ([Permissao_ID])
)
