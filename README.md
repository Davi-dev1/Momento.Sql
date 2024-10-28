# Momento.Sql
Atividade do Proa sobre SQL da empresa ficcional Momento

# 1 - Quantos funcionarios da empresa Momento trabalham no departamento de vendas?
R-5
## Q:
select* from departamentos where departamento_nome like"%vendas%";<br>
select count(*) from funcionarios where departamento_id=8;
