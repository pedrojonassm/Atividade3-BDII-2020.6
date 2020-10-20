/*
Crie um usuário chamado empresa_supervisor para o banco de dados EmpresaDB.
Este usuário deve ter privilégios apenas de fazer consultas em uma Visão da
tabela funcionário sem o salário (crie a visão). Ele disso ele pode consultar
as tabelas Atividade e AtividadeMembro e Projeto.
*/

CREATE OR REPLACE VIEW public."funcionarioPobre"
 AS
SELECT codigo, nome, sexo, datanasc, supervisor, depto
	FROM public.funcionario;

create user empresa_supervisor with password '123';
GRANT SELECT on Atividade, Atividade_membro, projeto, "funcionarioPobre" to empresa_supervisor;