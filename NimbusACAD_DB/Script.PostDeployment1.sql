MERGE INTO RBAC_Usuario AS Usuario
USING (VALUES 
	(1, 'Admin', 'Admin', 0)
)
AS Fonte(Usuario_ID, Username, Senha_Hash, Bloqueado)
ON Usuario.Usuario_ID = Fonte.Usuario_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Username, Senha_Hash, Bloqueado)
	VALUES(Username, Senha_Hash, Bloqueado);

MERGE INTO RBAC_Perfil AS Perfil
USING (VALUES
	(1, 'Admin')
)
AS Fonte(Perfil_ID, Perfil_Nome)
ON Perfil.Perfil_ID = Fonte.Perfil_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_Nome)
	VALUES(Perfil_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(1, 'Total')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Link_Usuario_Perfil AS LinkUP
USING (VALUES
	(1, 1)
)
AS Fonte(Usuario_ID, Perfil_ID)
ON LinkUP.Usuario_ID = Fonte.Usuario_ID AND LinkUP.Perfil_ID = Fonte.Perfil_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Usuario_ID, Perfil_ID)
	VALUES(Usuario_ID, Perfil_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 1)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);