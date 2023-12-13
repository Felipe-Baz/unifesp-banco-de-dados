-- Criação do Trigger
CREATE TRIGGER tr_AuditProjeto AFTER INSERT ON `Projeto`
FOR EACH ROW
BEGIN
    INSERT INTO `AuditoriaProjeto` (acao, cod_projeto, nome_projeto, desc_projeto)
    VALUES ('Inserção', NEW.cod_projeto, NEW.nome_projeto, NEW.desc_projeto);
END;

/* Caso de Teste para o Trigger

1. Inserir um novo projeto (Isso deve acionar o trigger)
INSERT INTO `Projeto` (`cod_projeto`, `nome_projeto`, `desc_projeto`, `cod_sala`)
VALUES (11, 'Projeto AB', 'Descrição do Projeto AB', 1);

2. Verificar se a auditoria foi registrada corretamente
SELECT * FROM `AuditoriaProjeto`;

*/