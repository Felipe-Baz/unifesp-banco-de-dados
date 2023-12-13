CREATE TABLE `Sala` (
  `cod_sala` integer AUTO_INCREMENT PRIMARY KEY ,
  `num_sala` varchar(255)
);

CREATE TABLE `Cidade` (
  `cod_cidade` integer AUTO_INCREMENT PRIMARY KEY ,
  `nome_cidade` varchar(255)
);

CREATE TABLE `Turno` (
  `cod_turno` integer AUTO_INCREMENT PRIMARY KEY ,
  `tipo_turno` varchar(255),
  `inicio_turno` varchar(255),
  `fim_turno` varchar(255)
);

CREATE TABLE `Faculdade` (
  `cod_faculdade` integer AUTO_INCREMENT PRIMARY KEY ,
  `cod_cidade` integer,
  `nome_faculdade` varchar(255)
);

CREATE TABLE `Curso` (
  `cod_curso` integer AUTO_INCREMENT PRIMARY KEY ,
  `cod_faculdade` integer,
  `nome_curso` varchar(255)
);

CREATE TABLE `Projeto` (
  `cod_projeto` integer AUTO_INCREMENT PRIMARY KEY ,
  `cod_sala` integer,
  `nome_projeto` varchar(255),
  `desc_projeto` varchar(255)
);

CREATE TABLE `Pessoa` (
  `cod_pessoa` integer AUTO_INCREMENT PRIMARY KEY ,
  `cod_turno` integer,
  `cod_cidade` integer,
  `nome` varchar(255),
  `cpf` varchar(255),
  `data_nascimento` timestamp
);

CREATE TABLE `Colaboradores` (
  `cod_colaborador` integer AUTO_INCREMENT PRIMARY KEY ,
  `cod_pessoa` integer,
  `cargo_colaborador` varchar(255)
);

CREATE TABLE `Cursando` (
  `cod_curso` integer,
  `cod_colaborador` integer,
  `cod_faculdade` integer,
  PRIMARY KEY (`cod_curso`, `cod_colaborador`, `cod_faculdade`)
);

CREATE TABLE `Voluntarios` (
  `cod_voluntario` integer AUTO_INCREMENT PRIMARY KEY ,
  `cod_pessoa` integer
);

CREATE TABLE `Orientadores` (
  `cod_orientador` integer AUTO_INCREMENT PRIMARY KEY ,
  `cod_pessoa` integer,
  `cod_faculdade` integer,
  `cargo_orientador` varchar(255)
);

CREATE TABLE `Colaborador_projeto` (
  `cod_colaborador` integer,
  `cod_projeto` integer,
  `data_inicial` timestamp,
  `data_final` timestamp,
  PRIMARY KEY (`cod_colaborador`, `cod_projeto`)
);

CREATE TABLE `Voluntarios_projeto` (
  `cod_voluntario` integer,
  `cod_projeto` integer,
  `data_inicial` timestamp,
  `data_final` timestamp,
  PRIMARY KEY (`cod_voluntario`, `cod_projeto`)
);

CREATE TABLE `Orientador_projeto` (
  `cod_orientador` integer,
  `cod_projeto` integer,
  `data_inicial` timestamp,
  `data_final` timestamp,
  PRIMARY KEY (`cod_orientador`, `cod_projeto`)
);

-- Criação da tabela de auditoria para armazenar informações sobre as alterações em Projeto
CREATE TABLE `AuditoriaProjeto` (
    `id_auditoria` INTEGER PRIMARY KEY AUTOINCREMENT,
    `acao` VARCHAR(255),
    `data_registro` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `cod_projeto` INTEGER,
    `nome_projeto` VARCHAR(255),
    `desc_projeto` VARCHAR(255)
);

ALTER TABLE `Faculdade` ADD FOREIGN KEY (`cod_cidade`) REFERENCES `Cidade` (`cod_cidade`);

ALTER TABLE `Curso` ADD FOREIGN KEY (`cod_faculdade`) REFERENCES `Faculdade` (`cod_faculdade`);

ALTER TABLE `Projeto` ADD FOREIGN KEY (`cod_sala`) REFERENCES `Sala` (`cod_sala`);

ALTER TABLE `Pessoa` ADD FOREIGN KEY (`cod_turno`) REFERENCES `Turno` (`cod_turno`);

ALTER TABLE `Pessoa` ADD FOREIGN KEY (`cod_cidade`) REFERENCES `Cidade` (`cod_cidade`);

ALTER TABLE `Colaboradores` ADD FOREIGN KEY (`cod_pessoa`) REFERENCES `Pessoa` (`cod_pessoa`);

ALTER TABLE `Cursando` ADD FOREIGN KEY (`cod_curso`) REFERENCES `Curso` (`cod_curso`);

ALTER TABLE `Cursando` ADD FOREIGN KEY (`cod_colaborador`) REFERENCES `Colaboradores` (`cod_colaborador`);

ALTER TABLE `Cursando` ADD FOREIGN KEY (`cod_faculdade`) REFERENCES `Faculdade` (`cod_faculdade`);

ALTER TABLE `Voluntarios` ADD FOREIGN KEY (`cod_pessoa`) REFERENCES `Pessoa` (`cod_pessoa`);

ALTER TABLE `Orientadores` ADD FOREIGN KEY (`cod_pessoa`) REFERENCES `Pessoa` (`cod_pessoa`);

ALTER TABLE `Orientadores` ADD FOREIGN KEY (`cod_faculdade`) REFERENCES `Faculdade` (`cod_faculdade`);

ALTER TABLE `Colaborador_projeto` ADD FOREIGN KEY (`cod_colaborador`) REFERENCES `Colaboradores` (`cod_colaborador`);

ALTER TABLE `Colaborador_projeto` ADD FOREIGN KEY (`cod_projeto`) REFERENCES `Projeto` (`cod_projeto`);

ALTER TABLE `Voluntarios_projeto` ADD FOREIGN KEY (`cod_voluntario`) REFERENCES `Voluntarios` (`cod_voluntario`);

ALTER TABLE `Voluntarios_projeto` ADD FOREIGN KEY (`cod_projeto`) REFERENCES `Projeto` (`cod_projeto`);

ALTER TABLE `Orientador_projeto` ADD FOREIGN KEY (`cod_orientador`) REFERENCES `Orientadores` (`cod_orientador`);

ALTER TABLE `Orientador_projeto` ADD FOREIGN KEY (`cod_projeto`) REFERENCES `Projeto` (`cod_projeto`);
