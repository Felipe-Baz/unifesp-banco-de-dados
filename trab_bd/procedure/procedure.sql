-- Criação do Procedimento Armazenado
CREATE PROCEDURE InserirProjetoEVerificarAuditoria(
    IN p_nome_projeto VARCHAR(255),
    IN p_desc_projeto VARCHAR(255),
    IN p_cod_sala INTEGER
)
BEGIN
    -- 1. Inserir um novo projeto
    INSERT INTO `Projeto` (`nome_projeto`, `desc_projeto`, `cod_sala`)
    VALUES (p_nome_projeto, p_desc_projeto, p_cod_sala);

    -- 2. Verificar se a auditoria foi registrada corretamente
    SELECT * FROM `AuditoriaProjeto`;
END;

/* Para Teste So rodar o seguinte comando:
CALL InserirProjetoEVerificarAuditoria('Novo Projeto', 'Descrição do Novo Projeto', 1);
*/