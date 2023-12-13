-- Consulta para listar todos os projetos com seus colaboradores:
SELECT Projeto.nome_projeto, Colaboradores.cargo_colaborador, Pessoa.nome
FROM Projeto
JOIN Colaborador_projeto ON Projeto.cod_projeto = Colaborador_projeto.cod_projeto
JOIN Colaboradores ON Colaborador_projeto.cod_colaborador = Colaboradores.cod_colaborador
JOIN Pessoa ON Colaboradores.cod_pessoa = Pessoa.cod_pessoa;

-- Consulta para obter informações sobre os cursos oferecidos em uma determinada cidade:
SELECT Curso.nome_curso, Faculdade.nome_faculdade, Cidade.nome_cidade
FROM Curso
JOIN Faculdade ON Curso.cod_faculdade = Faculdade.cod_faculdade
JOIN Cidade ON Faculdade.cod_cidade = Cidade.cod_cidade
WHERE Cidade.nome_cidade = 'São Paulo';

-- Consulta para listar os orientadores de cada projeto em uma determinada faculdade:
SELECT Projeto.nome_projeto, Orientadores.cargo_orientador, Pessoa.nome
FROM Projeto
JOIN Orientador_projeto ON Projeto.cod_projeto = Orientador_projeto.cod_projeto
JOIN Orientadores ON Orientador_projeto.cod_orientador = Orientadores.cod_orientador
JOIN Pessoa ON Orientadores.cod_pessoa = Pessoa.cod_pessoa
WHERE Orientadores.cod_faculdade = 1;

-- Consulta para listar os voluntários em projetos específicos:
SELECT Voluntarios_projeto.cod_voluntario, Voluntarios_projeto.data_inicial, Voluntarios_projeto.data_final, Pessoa.nome
FROM Voluntarios_projeto
JOIN Voluntarios ON Voluntarios_projeto.cod_voluntario = Voluntarios.cod_voluntario
JOIN Pessoa ON Voluntarios.cod_pessoa = Pessoa.cod_pessoa
WHERE Voluntarios_projeto.cod_projeto IN (1, 2, 3);

-- Consulta para obter a lista de colaboradores e seus cursos em uma faculdade específica:
SELECT Colaboradores.cod_colaborador, Pessoa.nome, Curso.nome_curso
FROM Colaboradores
JOIN Cursando ON Colaboradores.cod_colaborador = Cursando.cod_colaborador
JOIN Curso ON Cursando.cod_curso = Curso.cod_curso
JOIN Faculdade ON Cursando.cod_faculdade = Faculdade.cod_faculdade
JOIN Pessoa ON Colaboradores.cod_pessoa = Pessoa.cod_pessoa
WHERE Faculdade.cod_faculdade = 3;

-- Consulta para listar todos os projetos e seus colaboradores, incluindo projetos sem colaboradores:
SELECT Projeto.nome_projeto, Colaboradores.cargo_colaborador, Pessoa.nome
FROM Projeto
LEFT JOIN Colaborador_projeto ON Projeto.cod_projeto = Colaborador_projeto.cod_projeto
LEFT JOIN Colaboradores ON Colaborador_projeto.cod_colaborador = Colaboradores.cod_colaborador
LEFT JOIN Pessoa ON Colaboradores.cod_pessoa = Pessoa.cod_pessoa;

-- Consulta para obter informações sobre todas as faculdades e seus cursos, incluindo faculdades sem cursos:
SELECT Faculdade.nome_faculdade, Curso.nome_curso
FROM Faculdade
LEFT JOIN Curso ON Faculdade.cod_faculdade = Curso.cod_faculdade;

-- Consulta para calcular a média de idade das pessoas por cidade, ordenando do mais jovem para o mais velho:
SELECT Cidade.nome_cidade, AVG(YEAR(CURRENT_DATE) - YEAR(Pessoa.data_nascimento)) AS media_idade
FROM Pessoa
JOIN Cidade ON Pessoa.cod_cidade = Cidade.cod_cidade
GROUP BY Cidade.nome_cidade
ORDER BY media_idade;

-- Consulta para contar o número de colaboradores por cargo, incluindo apenas cargos com mais de 5 colaboradores: --
SELECT Colaboradores.cargo_colaborador, COUNT(*) AS qtd_colaboradores
FROM Colaboradores
GROUP BY Colaboradores.cargo_colaborador
HAVING COUNT(*) > 5
ORDER BY qtd_colaboradores DESC;

-- Consulta para somar a quantidade de salas por faculdade:
SELECT Faculdade.nome_faculdade, COUNT(Sala.cod_sala) AS qtd_salas
FROM Faculdade
LEFT JOIN Curso ON Faculdade.cod_faculdade = Curso.cod_faculdade
LEFT JOIN Sala ON Curso.cod_faculdade = Sala.cod_sala
GROUP BY Faculdade.nome_faculdade
ORDER BY qtd_salas DESC;

-- Consulta para encontrar a maior duração de projetos por sala, incluindo apenas salas com projetos que duram mais de 30 dias:
SELECT Sala.num_sala, MAX(DATEDIFF(Orientador_projeto.data_final, Orientador_projeto.data_inicial)) AS duracao_maxima
FROM Sala
LEFT JOIN Projeto ON Sala.cod_sala = Projeto.cod_sala
LEFT JOIN Orientador_projeto ON Projeto.cod_projeto = Orientador_projeto.cod_projeto
GROUP BY Sala.num_sala
HAVING duracao_maxima > 30
ORDER BY duracao_maxima DESC;

-- Consulta para calcular a média de cursos por faculdade:
SELECT Faculdade.nome_faculdade, AVG(qtd_cursos) AS media_cursos
FROM Faculdade
LEFT JOIN (
    SELECT cod_faculdade, COUNT(cod_curso) AS qtd_cursos
    FROM Curso
    GROUP BY cod_faculdade
) AS Subquery ON Faculdade.cod_faculdade = Subquery.cod_faculdade
GROUP BY Faculdade.nome_faculdade
ORDER BY media_cursos DESC;
