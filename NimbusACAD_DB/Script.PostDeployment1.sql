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
	(1, 'Curso-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(2, 'Horario-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(3, 'Diario-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(4, 'Diario-ListarPresenca')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(5, 'Cargo-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(6, 'Documento-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(7, 'RBACPerfil-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(8, 'RBACPermissao-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(9, 'RBACUsuario-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(10, 'Cargo-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(11, 'Cargo-NovoCargo')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(12, 'Cargo-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(13, 'Cargo-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(14, 'Curso-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(15, 'Curso-NovoCurso')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(16, 'Curso-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(17, 'Curso-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(18, 'Diario-Chamada')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(19, 'Diario-LancarNota')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(20, 'Diario-CorrigirNota')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(21, 'Diario-RemoverPresenca')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(22, 'Diario-AdicionarPresenca')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(23, 'Diario-VerNotasAluno')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(24, 'Diario-VerNotasDisciplina')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(25, 'Disciplina-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(26, 'Disciplina-NovaDisciplina')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(27, 'Disciplina-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(28, 'Disciplina-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(29, 'Documento-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(30, 'Documento-NovoDocumento')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(31, 'Documento-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(32, 'Documento-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(33, 'Funcionario-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(34, 'Funcionario-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(35, 'Funcionario-NovaPessoa')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(36, 'Funcionario-RegistrarDocumento')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(37, 'Funcionario-NovoFuncionario')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(38, 'Funcioanrio-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(39, 'Funcionario-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(40, 'Funcionario-NovoDocumento')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(41, 'Horario-DefinirHorario')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(42, 'Horario-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(43, 'Horario-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(44, 'Matricula-Index')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(45, 'Matricula-NovaPessoa')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(46, 'Matricula-RegistrarDocumento')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(47, 'Matricula-NovaMatricula')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(48, 'Matricula-DeveDocumentoo')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(49, 'Matricula-VincularModulo')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(50, 'Matricula-VincularDisciplina')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(51, 'Matricula-VerAluno')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(52, 'Matricula-VerVinculoModulo')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(53, 'Matricula-EditarVinculoModulo')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(54, 'Matricula-RemoverVinculoModulo')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(55, 'Matricula-VerVinculoDisciplina')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(56, 'Matricula-NovoDocumento')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(57, 'Modulo-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(58, 'Modulo-NovoModulo')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(59, 'Modulo-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(60, 'Modulo-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(61, 'RBACPerfil-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(62, 'RBACPerfil-NovoPerfilDeAcesso')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(63, 'RBACPerfil-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(64, 'RBACPerfil-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(65, 'RBACPerfil-VincularPermissao')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(66, 'RBACPerfil-RemoverPermissao')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(67, 'RBACPermissao-NovaPermissao')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(68, 'RBACPermissao-Editar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(69, 'RBACPermissao-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(70, 'RBACUsuario-Detalhes')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(71, 'RBACUsuario-Bloquear')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(72, 'RBACUsuario-Deletar')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(73, 'RBACUsuario-NovoPerfilDeAcesso')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(74, 'Matricula-RemoverVinculoDisciplina')
)
AS Fonte(Permissao_ID, Permissao_Nome)
ON Permissao.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Permissao_Nome)
	VALUES(Permissao_Nome);

MERGE INTO RBAC_Permissao AS Permissao
USING (VALUES
	(75, 'RBACUsuario-RemoverPerfilDeAcesso')
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

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 2)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 3)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 4)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 5)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 6)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 7)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 8)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 9)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 10)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 11)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 12)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 13)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 14)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 15)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 16)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 17)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 18)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 19)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 20)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 21)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 22)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 24)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 25)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 26)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 27)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 28)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 29)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 30)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 31)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 32)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 33)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 34)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 35)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 36)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 37)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 38)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 39)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 40)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 41)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 42)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 43)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 44)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1,45)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 46)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 47)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 48)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 49)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 50)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 51)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 52)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 53)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 54)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 55)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 56)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 57)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 58)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 59)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 60)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 61)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 62)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 63)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 64)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 65)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 66)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 67)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 68)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 69)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 70)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 71)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 72)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 73)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);

MERGE INTO RBAC_Link_Perfil_Permissao AS LinkPP
USING (VALUES
	(1, 74)
)
AS Fonte(Perfil_ID, Permissao_ID)
ON LinkPP.Perfil_ID = Fonte.Perfil_ID AND LinkPP.Permissao_ID = Fonte.Permissao_ID
WHEN NOT MATCHED BY TARGET THEN
	INSERT(Perfil_ID, Permissao_ID)
	VALUES(Perfil_ID, Permissao_ID);