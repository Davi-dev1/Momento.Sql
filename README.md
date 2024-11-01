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
# Q : <br> 
INSERT INTO momento.escritorios(escritorio_id,escritorio_nome,endereco,cep,cidade,estado_provincia,pais_id) VALUES (2900,"James Dio","Rua das Jaquetibas",'02424','São Paulo','São Paulo','BR');<br>
INSERT INTO momento.departamentos(departamento_nome,escritorio_id) VALUES ('Inovação',2900);<br>
# 10 - O departamento de Inovações está sem funcionários. Inclua alguns colegas de turma nesse departamento.<br>
INSERT INTO momento.funcionarios(primeiro_nome, sobrenome, email, senha, telefone, data_contratacao, cargo_id, salario, gerente_id, departamento_id) VALUES("Lucy","Borges","lucy@gmail.com",2323,987865409,2010-01-01,18,1500,null,19);
INSERT INTO momento.funcionarios(primeiro_nome, sobrenome, email, senha, telefone, data_contratacao, cargo_id, salario, gerente_id, departamento_id) VALUES("Lucas","Santos","lucas@gmail.com",2478,937097778,2024-05-01,18,2000,null,19);
# 11 -  Quantos funcionários da empresa Momento possuem conjuges?<br>
## R: 4 <br>
### Q :
select count(*) from momento.dependentes where relacionamento like "%conjuge%"<br>
# 12 - Qual o funcionário contratado há mais tempo na empresa?
## R: Steven            <br>
## Q :<BR>
select primeiro_nome,data_contratacao from funcionarios order by data_contratacao;            <br>
# 13 - Qual o funcionário contratado há menos tempo na empresa? <br>
## R: Zatana<br>
## Q: <br>
select primeiro_nome,data_contratacao from funcionarios order by data_contratacao desc;<br>
# 13 - Quem são os funcionários com mais tempo na empresa, considerando a data_contratacao? <br>
## R :<br>
Steven<br>
Jennifer<br>
Neena<br>
## Q:<br>
select primeiro_nome,data_contratacao from funcionarios order by data_contratacao;<br>
# 14 - Como a média salarial dos funcionários da "Momento" evoluiu nos últimos anos? Dica: utilize a função AVG() para calcular a média salarial dos funcionários. e GROUP BY para agrupar os resultados por ano.
## R:  1987	14200.000000
1989	17000.000000 <br>
1990	9000.000000 <br>
1991	6000.000000 <br>
1993	17000.000000 <br> 
1994	12847.500000<br>
1995	5500.000000<br>
1996	9750.000000<br>
1997	6450.000000<br>
1998	5816.666667<br>
1999	5150.000000<br>
2000	19650.000000     <br>
## Q : <br>  
select YEAR(DATA_CONTRATACAO) as ano, avg(salario) as salário from funcionarios group by ano order by ano    <br>
# 15 - Qual a média salarial dos funcionários da empresa Momento, excluindo-se o CEO, CMO e CFO?
## R - 8442.894737  <br>
## Q:<br>
select avg(salario) as salario from funcionarios where not cargo_id in (4,7,10)  <br> 
# 16 - Qual a média salarial do departamento de tecnologia? <br>
## R: 5760.000000<br>
## Q: <br>
select avg(salario)as salario from funcionarios where departamento_id=6;<br>
# 17 - Qual o departamento com a maior média salarial?
# R: Departamento com id=13<br>
# Q : <br>
select avg(salario) as salário,departamento_id from funcionarios where  departamento_id in (1,2,3,4,5,6,7,8,9,10,11,12,13,19) group by departamento_id order by departamento_id desc  <BR>
# 18 - Qual o departamento com o menor número de funcionários?
# R :departamento_id=1 com apenas 1 funcionário <br>
# Q :<br>
select departamento_id, count(*) as num_de_funcionarios from funcionarios where departamento_id in (1,2,3,4,5,6,7,8,9,10,11,12,13,19) group by departamento_id order by departamento_id desc;   <br>


