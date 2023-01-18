CREATE TABLE `Cursos` (
  `id` int PRIMARY KEY,
  `nome` varchar(50),
  `requisitos` varchar(255),
  `carga_horaria` int,
  `horario` [datetime],
  `preco` double
);

CREATE TABLE `Turmas` (
  `id` int PRIMARY KEY,
  `data_inicio` date,
  `data_final` date,
  `professor_id` int,
  `Cursos_id` int
);

CREATE TABLE `Professores` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255),
  `valor_hora` int,
  `certificados` varchar(255)
);

CREATE TABLE `Matriculas` (
  `id` int PRIMARY KEY,
  `turmas_id` int,
  `alunos_id` int,
  `data_matricula` date
);

CREATE TABLE `Alunos` (
  `id` int PRIMARY KEY,
  `cpf` int(11),
  `nome` varchar(50),
  `email` varchar(50),
  `telefone` char(14),
  `data_nascimento` date
);

ALTER TABLE `Professores` ADD FOREIGN KEY (`id`) REFERENCES `Turmas` (`professor_id`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`id`) REFERENCES `Matriculas` (`turmas_id`);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`id`) REFERENCES `Matriculas` (`alunos_id`);

ALTER TABLE `Cursos` ADD FOREIGN KEY (`id`) REFERENCES `Turmas` (`Cursos_id`);
