CREATE TABLE [dbo].[Negocio_Pessoa]
(
	[Pessoa_ID]			INT	IDENTITY(1,1),
	[Primeiro_Nome]		NVARCHAR(30)		NULL,
	[Sobrenome]			NVARCHAR(30)		NULL,
	[CPF]				NVARCHAR(14)		NULL	UNIQUE,
	[RG]				NVARCHAR(12)		NULL	UNIQUE,
	[Sexo]				NVARCHAR(1)			NULL,
	[Dt_Nascimento]		DATE				NULL,
	[Tel_Principal]		NVARCHAR(15)		NULL,
	[Tel_Opcional]		NVARCHAR(15)		NULL,
	[Email]				NVARCHAR(50)		NULL	UNIQUE,
	[Email_Confirmado]	BIT					NULL,
	[Tot_Notif_NL]		INT					NULL,
	PRIMARY KEY CLUSTERED ([Pessoa_ID] ASC)
)
