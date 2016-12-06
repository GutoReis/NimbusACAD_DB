CREATE TABLE [dbo].[RBAC_Permissao]
(
	[Permissao_ID]		INT	IDENTITY(1,1),
	[Permissao_Nome]	NVARCHAR(50)		NULL,
	PRIMARY KEY CLUSTERED ([Permissao_ID])
)
