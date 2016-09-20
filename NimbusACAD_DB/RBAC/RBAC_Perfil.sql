CREATE TABLE [dbo].[RBAC_Perfil]
(
	[Perfil_ID]			INT	IDENTITY(1,1),
	[Perfil_Nome]		NVARCHAR(30)		NULL,
	[Descricao]			NVARCHAR(200)		NULL,
	PRIMARY KEY CLUSTERED ([Perfil_ID] ASC)
)
