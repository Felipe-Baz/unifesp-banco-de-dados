/* Esta view (vw_ColaboradoresProjetos) mostra informações sobre os colaboradores em cada projeto,
incluindo o código do projeto, nome do projeto, código do colaborador, nome do colaborador, cargo do colaborador,
data de início e data de término da colaboração. */

CREATE VIEW vw_ColaboradoresProjetos AS
SELECT
    CP.cod_projeto,
    P.nome_projeto,
    C.cod_colaborador,
    PE.nome AS nome_colaborador,
    C.cargo_colaborador,
    CP.data_inicial,
    CP.data_final
FROM
    Colaborador_projeto CP
JOIN Projeto P ON CP.cod_projeto = P.cod_projeto
JOIN Colaboradores C ON CP.cod_colaborador = C.cod_colaborador
JOIN Pessoa PE ON C.cod_pessoa = PE.cod_pessoa;

/* Caso de Teste para View

SELECT *
FROM vw_ColaboradoresProjetos;

*/