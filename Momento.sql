use momento;
select * from funcionarios;
select *from cargos;
select* from departamentos where departamento_nome like"%vendas%";
select count(*) from funcionarios where departamento_id=8;
select * from departamentos where departamento_nome like "%tecnologia%";
select count(*) from funcionarios where departamento_id=6;

select *from departamentos;
select * from funcionarios where departamento_id=6;
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (208,'Davi','Gonçalves','davi.po@momento.org','666666','215.216.217','1999-12-07',9,9000.00,103,8);

select count(*) from  funcionarios
