CREATE TABLE [dbo].[Negocio_Tipo_Funcionario]
(
	[Tipo_Funcionario_ID]	INT IDENTITY(1,1),
	[Cargo]					NVARCHAR(30)		NULL,
	[Descricao]				NVARCHAR(MAX)		NULL,
	PRIMARY KEY CLUSTERED ([Tipo_Funcionario_ID] ASC)
)
