-- Inserts Sala
INSERT INTO Sala (cod_sala, num_sala) VALUES (1, 'A101');
INSERT INTO Sala (cod_sala, num_sala) VALUES (2, 'B203');
INSERT INTO Sala (cod_sala, num_sala) VALUES (3, 'C305');
INSERT INTO Sala (cod_sala, num_sala) VALUES (4, 'D102');
INSERT INTO Sala (cod_sala, num_sala) VALUES (5, 'E201');
INSERT INTO Sala (cod_sala, num_sala) VALUES (6, 'F304');
INSERT INTO Sala (cod_sala, num_sala) VALUES (7, 'G202');
INSERT INTO Sala (cod_sala, num_sala) VALUES (8, 'H403');
INSERT INTO Sala (cod_sala, num_sala) VALUES (9, 'I101');
INSERT INTO Sala (cod_sala, num_sala) VALUES (10, 'J204');

-- Inserts Cidade
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (1, 'São Paulo');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (2, 'Rio de Janeiro');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (3, 'Belo Horizonte');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (4, 'Salvador');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (5, 'Brasília');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (6, 'Recife');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (7, 'Porto Alegre');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (8, 'Fortaleza');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (9, 'Curitiba');
INSERT INTO Cidade (cod_cidade, nome_cidade) VALUES (10, 'Manaus');

-- Inserts Turno
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (1, 'Manhã', '08:00', '12:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (2, 'Tarde', '13:00', '17:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (3, 'Noite', '18:00', '22:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (4, 'Integral', '08:00', '17:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (5, 'Noturno', '19:00', '01:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (6, 'Flexível', '10:00', '18:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (7, 'Matutino', '07:00', '11:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (8, 'Vespertino', '14:00', '18:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (9, 'Estendido', '10:00', '20:00');
INSERT INTO Turno (cod_turno, tipo_turno, inicio_turno, fim_turno) VALUES (10, 'Intermediário', '09:00', '15:00');

-- Inserts Faculdade
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (1, 1, 'Universidade São Paulo');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (2, 2, 'Universidade Federal do Rio de Janeiro');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (3, 3, 'Universidade de Belo Horizonte');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (4, 4, 'Universidade Salvador');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (5, 5, 'Universidade de Brasília');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (6, 6, 'Universidade do Recife');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (7, 7, 'Universidade Porto Alegre');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (8, 8, 'Universidade Fortaleza');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (9, 9, 'Universidade de Curitiba');
INSERT INTO Faculdade (cod_faculdade, cod_cidade, nome_faculdade) VALUES (10, 10, 'Universidade de Manaus');

-- Inserts Curso
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (1, 1, 'Engenharia Civil');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (2, 2, 'Ciências da Computação');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (3, 3, 'Administração');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (4, 4, 'Arquitetura e Urbanismo');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (5, 5, 'Direito');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (6, 6, 'Medicina');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (7, 7, 'Economia');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (8, 8, 'Psicologia');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (9, 9, 'Ciências Contábeis');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (10, 10, 'Biologia');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (11, 1, 'Engenharia de Computação');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (12, 1, 'Administração de Empresas');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (13, 1, 'Ciência da Computação');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (14, 1, 'Engenharia Elétrica');
INSERT INTO Curso (cod_curso, cod_faculdade, nome_curso) VALUES (15, 1, 'Direito');


-- Inserts Projeto
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (1, 1, 'Projeto A', 'Desenvolvimento de software');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (2, 2, 'Projeto B', 'Pesquisa em engenharia');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (3, 3, 'Projeto C', 'Estudo de mercado');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (4, 4, 'Projeto D', 'Projeto arquitetônico');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (5, 5, 'Projeto E', 'Defesa jurídica');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (6, 6, 'Projeto F', 'Pesquisa médica');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (7, 7, 'Projeto G', 'Análise econômica');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (8, 8, 'Projeto H', 'Aconselhamento psicológico');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (9, 9, 'Projeto I', 'Contabilidade estratégica');
INSERT INTO Projeto (cod_projeto, cod_sala, nome_projeto, desc_projeto) VALUES (10, 10, 'Projeto J', 'Pesquisa em biologia');

-- Inserts Pessoa
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (1, 1, 1, 'João Silva', '123.456.789-01', '1990-05-15 08:30:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (2, 2, 2, 'Maria Oliveira', '987.654.321-02', '1985-12-10 14:45:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (3, 3, 3, 'Carlos Santos', '456.789.012-03', '1998-07-22 10:15:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (4, 1, 4, 'Ana Souza', '111.222.333-04', '1982-03-05 09:00:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (5, 2, 5, 'Pedro Lima', '444.555.666-05', '1995-09-18 16:30:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (6, 3, 6, 'Mariana Costa', '777.888.999-06', '1993-11-27 11:45:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (7, 1, 7, 'Lucas Pereira', '333.222.111-07', '1987-08-14 13:20:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (8, 2, 8, 'Juliana Rocha', '666.555.444-08', '1991-06-02 15:10:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (9, 3, 9, 'Fernando Oliveira', '999.888.777-09', '1989-04-30 10:00:00');
INSERT INTO Pessoa (cod_pessoa, cod_turno, cod_cidade, nome, cpf, data_nascimento)
VALUES (10, 1, 10, 'Camila Santos', '123.987.456-10', '1997-02-08 12:40:00');

-- Inserts Colaboradores
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (1, 1, 'Analista de Desenvolvimento');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (2, 2, 'Gerente de Projetos');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (3, 3, 'Assistente Administrativo');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (4, 4, 'Engenheiro Civil');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (5, 5, 'Advogado');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (6, 6, 'Médico');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (7, 7, 'Economista');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (8, 8, 'Psicólogo');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (9, 9, 'Contador');
INSERT INTO Colaboradores (cod_colaborador, cod_pessoa, cargo_colaborador)
VALUES (10, 10, 'Biólogo');

-- Inserts Cursando
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (1, 1, 1);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (2, 2, 2);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (3, 3, 3);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (4, 4, 4);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (5, 5, 5);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (6, 6, 6);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (7, 7, 7);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (8, 8, 8);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (9, 9, 9);
INSERT INTO Cursando (cod_curso, cod_colaborador, cod_faculdade)
VALUES (10, 10, 10);

-- Inserts Voluntarios
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (1, 1);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (2, 2);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (3, 3);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (4, 4);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (5, 5);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (6, 6);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (7, 7);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (8, 8);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (9, 9);
INSERT INTO Voluntarios (cod_voluntario, cod_pessoa) VALUES (10, 10);

-- Inserts Orientadores
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (1, 1, 1, 'Professor');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (2, 2, 2, 'Coordenador');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (3, 3, 3, 'Orientador de Pesquisa');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (4, 4, 4, 'Diretor Acadêmico');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (5, 5, 5, 'Supervisor de Estágios');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (6, 6, 6, 'Orientador de Projetos');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (7, 7, 7, 'Coordenador de Pesquisa');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (8, 8, 8, 'Diretor de Ensino');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (9, 9, 9, 'Orientador Acadêmico');
INSERT INTO Orientadores (cod_orientador, cod_pessoa, cod_faculdade, cargo_orientador) VALUES (10, 10, 10, 'Diretor de Pesquisa');

-- Inserts Colaborador_projeto
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (1, 1, '2023-01-01 08:00:00', '2023-02-01 17:00:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (2, 2, '2023-02-15 10:00:00', '2023-04-15 16:00:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (3, 3, '2023-03-10 09:30:00', '2023-05-10 18:30:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (4, 4, '2023-04-05 12:00:00', '2023-06-05 20:00:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (5, 5, '2023-05-20 14:00:00', '2023-07-20 22:00:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (6, 6, '2023-06-15 11:45:00', '2023-08-15 19:45:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (7, 7, '2023-07-01 13:20:00', '2023-09-01 21:20:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (8, 8, '2023-08-10 15:10:00', '2023-10-10 23:10:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (9, 9, '2023-09-25 10:00:00', '2023-11-25 18:00:00');
INSERT INTO Colaborador_projeto (cod_colaborador, cod_projeto, data_inicial, data_final)
VALUES (10, 10, '2023-10-20 12:40:00', '2023-12-20 20:40:00');

-- Inserts Voluntarios_projeto
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (1, 1, '2023-01-01 08:00:00', '2023-02-01 17:00:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (2, 2, '2023-02-15 10:00:00', '2023-04-15 16:00:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (3, 3, '2023-03-10 09:30:00', '2023-05-10 18:30:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (4, 4, '2023-04-05 12:00:00', '2023-06-05 20:00:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (5, 5, '2023-05-20 14:00:00', '2023-07-20 22:00:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (6, 6, '2023-06-15 11:45:00', '2023-08-15 19:45:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (7, 7, '2023-07-01 13:20:00', '2023-09-01 21:20:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (8, 8, '2023-08-10 15:10:00', '2023-10-10 23:10:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (9, 9, '2023-09-25 10:00:00', '2023-11-25 18:00:00');
INSERT INTO Voluntarios_projeto (cod_voluntario, cod_projeto, data_inicial, data_final)
VALUES (10, 10, '2023-10-20 12:40:00', '2023-12-20 20:40:00');


-- Inserts Orientador_projeto
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (1, 1, '2023-01-01 08:00:00', '2023-02-01 17:00:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (2, 2, '2023-02-15 10:00:00', '2023-04-15 16:00:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (3, 3, '2023-03-10 09:30:00', '2023-05-10 18:30:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (4, 4, '2023-04-05 12:00:00', '2023-06-05 20:00:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (5, 5, '2023-05-20 14:00:00', '2023-07-20 22:00:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (6, 6, '2023-06-15 11:45:00', '2023-08-15 19:45:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (7, 7, '2023-07-01 13:20:00', '2023-09-01 21:20:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (8, 8, '2023-08-10 15:10:00', '2023-10-10 23:10:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (9, 9, '2023-09-25 10:00:00', '2023-11-25 18:00:00');
INSERT INTO Orientador_projeto (cod_orientador, cod_projeto, data_inicial, data_final)
VALUES (10, 10, '2023-10-20 12:40:00', '2023-12-20 20:40:00');