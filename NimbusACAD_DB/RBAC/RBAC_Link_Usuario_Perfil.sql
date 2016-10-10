CREATE TABLE [dbo].[RBAC_Link_Usuario_Perfil]
(
	[Link_ID]		INT	IDENTITY(1,1),
	[Usuario_ID]	INT		NOT NULL,
	[Perfil_ID]		INT		NOT NULL,
	PRIMARY KEY CLUSTERED ([Usuario_ID], [Perfil_ID] ASC),

	CONSTRAINT [FK_dbo.RBAC_Link_Usuario_Perfil_dbo.RBAC_Usuario_Usuario_ID] FOREIGN KEY([Usuario_ID])
		REFERENCES [dbo].[RBAC_Usuario] ([Usuario_ID]),

	CONSTRAINT [FK_dbo.RBAC_Link_Usuario_Perfil_dbo.RBAC_Perfil_Perfil_ID] FOREIGN KEY ([Perfil_ID])
		REFERENCES [dbo].[RBAC_Perfil] ([Perfil_ID])
)
