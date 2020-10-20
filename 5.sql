/*
Crie um usuário chamado empresa_gerente para o banco de dados EmpresaDB.
Este usuário deve ter privilégios apenas de fazer consultas em todas as
tabelas. Ele pode inserir e atualizar as tabelas Equipe, Membro, Atividade e AtividadeProjeto.
*/
create user empresa_gerente;
GRANT SELECT ON all tables in schema public to empresa_gerente;
grant insert, update ON
Equipe, Membro, Atividade, Atividade_projeto to empresa_gerente;
