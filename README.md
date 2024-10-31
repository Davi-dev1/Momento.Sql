# Momento.Sql
Atividade do Proa sobre SQL da empresa ficcional Momento
# Deparatmento de Tecnologia

# 1 -Inclua suas próprias informações no departamento de Tecnologia da empresa
## Q:
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (208,'Davi','Gonçalves','davi.po@momento.org','666666','215.216.217','1999-12-07',9,9000.00,103,8);

# 2- Agora diga, quantos funcionários temos ao total na empresa?
R-42
## Q:

select count(*) from  funcionarios

# 3- E quanto ao Departamento de Tecnologia?
R-6
## Q:
select * from departamentos where departamento_nome like "%tecnologia%";<br>
select count(*) from funcionarios where departamento_id=6;

# Departamento de vendas

# 4 - Quantos funcionarios da empresa Momento trabalham no departamento de vendas?
R-5
## Q:
select* from departamentos where departamento_nome like"%vendas%";<br>
select count(*) from funcionarios where departamento_id=8;
# 5 Salários no Departamento de Vendas
R:<br>
R$14000.00<br>
R$13500.00<br>
R$8600.00<br>
R$8400.00<br>
R$7000.00<br>
Q:<BR>
select salario from funcionarios where departamento_id=8; 
# 6-Qual é o custo total dos salários do pessoal de Vendas? Isso nos ajuda a entender o orçamento do departamento!
R- R$51500.00<br>
Q:<br>
select sum(salario) as soma_dos_salários_totais from funcionarios where departamento_id=8 
# 7 Quais são os produtos mais vendidos e quais têm pouca ou nenhuma saída?
R - produto mais vendido:1<br> 4 <br>  8 <br> 5 <br> 3 <br>produtos menos vendidos: 1 <br> 10<br> 3<br> 11 <br> 12<br>
     
