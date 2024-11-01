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
# 7 -  Quais são os produtos mais vendidos e quais têm pouca ou nenhuma saída?
R : <br> 
# produto mais vendido (produto_id):<br>1<br> 4 <br>  8 <br> 5 <br> 3 <br> 
# Produtos menos vendidos(produto_id):<br> 1 <br> 10<br> 3<br> 11 <br> 12<br>
# Q:<br>
select venda_id, produto_id, quantidade from vendas order by quantidade desc;<br>
# 8 - Qual é o produto mais caro no inventário da empresa?<br>
R: Existem 2 produtos com o mesmo preço: <br> Sabre de Luz (Mace Windu)	, preço - R$990.29<br>
Batarangs Oficiais, preço - R$	900.29 <br>
# 9 - Um novo departamento foi criado. O departamento de Inovações. Ele será locado no Brasil. Por favor, adicione-o no banco de dados da empresa colocando quaisquer informações que você achar relevantes.
# Q : INSERT INTO momento.escritorios(escritorio_id,escritorio_nome,endereco,cep,cidade,estado_provincia,pais_id) VALUES (2900,"James Dio","Rua das Jaquetibas",'02424','São Paulo','São Paulo','BR');<br>
INSERT INTO momento.departamentos(departamento_nome,escritorio_id) VALUES ('Inovação',2900);
