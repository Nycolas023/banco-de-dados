USE bdFuncionario


		/* Consultas Simples */ 

SELECT SUM(codFunc) as 'Cod Funcionario' from tbFunc; --1

SELECT SUM(idade) as 'Idade'from tbDadosFunc; --2

SELECT SUM(qntd_filhos) as 'Quantidade de filhos' from tbDadosFunc; --3

SELECT SUM(salario) as 'Salario' from tbFunc; --4

SELECT SUM(tempo_empresa) as 'Tempo de Empresa' from tbFunc; --5

SELECT SUM(tempo_cargo) as 'Tempo de Cargo' from tbFunc; --6

SELECT MAX(codFunc) as 'Cod Funcionario' from tbFunc; --7

SELECT MIN(codFunc) as 'Cod Funcionario' from tbFunc; --8

SELECT MAX(idade) as 'Idade' from tbDadosFunc; --9

SELECT MIN(idade) as 'Idade' from tbDadosFunc; --10

SELECT MAX(qntd_filhos) as 'Quantidade de filhos' from tbDadosFunc; --11

SELECT MIN(qntd_filhos) as 'Quantidade de filhos' from tbDadosFunc; --12

SELECT MAX(salario) as 'Salario' from tbFunc; --13

SELECT MIN(salario) as 'Salario' from tbFunc; --14

SELECT MAX(tempo_empresa) as 'Tempo de Empresa' from tbFunc; --15

SELECT MIN(tempo_empresa) as 'Tempo de Empresa' from tbFunc; --16

SELECT MAX(tempo_cargo) as 'Tempo de Cargo' from tbFunc; --17

SELECT MIN(tempo_cargo) as 'Tempo de Cargo' from tbFunc; --18

SELECT AVG(codFunc) as 'Cod Funcionario' from tbFunc; --19

SELECT AVG(idade) as 'Idade' from tbDadosFunc; --20

select avg(qntd_filhos) from tbDadosFunc; --21

select avg(salario) from tbFunc; --22

select avg(tempo_empresa) from tbFunc; --23

select avg(tempo_cargo) from tbFunc; --24

select count(*) as Quantidade from tbFunc where salario > 800.00;--25

select count(*) as Quantidade from tbFunc where salario > 1000.00;--26

select count(*) as Quantidade from tbFunc where salario < 400.00; --27

select count(*) as Quantidade from tbFunc where salario < 2000.00; --28

select count(*) as Quantidade from tbFunc where salario > 8000.00; --29

select count(*) as Quantidade from tbFunc where salario < 1000.00; --30

select count(*) as Quantidade from tbFunc where tempo_cargo = 1 --31

select count(*) as Quantidade from tbFunc where tempo_cargo = 3 --32

select count(*) as Quantidade from tbFunc where tempo_cargo = 4 --33

select count(*) as Quantidade from tbFunc where tempo_cargo > 10 --34

select count(*) as Quantidade from tbDadosFunc where idade > 20 --35

select count(*) as Quantidade from tbDadosFunc where idade > 40  --36

select count(*) as Quantidade from tbDadosFunc where idade < 80 --37

select count(*) as Quantidade from tbDadosFunc where idade < 200 --38



					/*Consulta com group by e order by*/

select count(cargo) as Quantidade from tbFunc where cargo like 'Gerente' GROUP BY cargo --39

select count(cargo) as Quantidade from tbFunc where cargo like 'Analista' GROUP BY cargo --40

select count(cargo) as Quantidade from tbFunc where cargo like 'Designer' GROUP BY cargo --41

select count(cargo) as Quantidade from tbFunc where cargo like 'Programador' GROUP BY cargo --42

select sum(salario) from tbFunc where cargo like 'Analista'-- 43

select sum(salario) from tbFunc where cargo like 'Gerente'-- 44

select count(codDadosFun) from tbDadosFunc where uf like 'São Paulo' -- 45

select count(codDadosFun) from tbDadosFunc where uf like 'Bahia' -- 46

select count(codDadosFun) from tbDadosFunc where uf like 'Ceará' -- -- 47

select count(codDadosFun) from tbDadosFunc where uf like 'Rio de Janeiro' -- 48

select count(codDadosFun) from tbDadosFunc where uf <> 'Rio de Janeiro' -- 49

select count(*) from tbFunc where sindicalizado = 1 -- 50

select count(*) from tbFunc where sindicalizado = 0 -- 51

select cargo, count(*) as Quantidade from tbFunc group by cargo order by cargo ASC -- 52

select qntd_filhos, count(*) as Quantidade from tbDadosFunc group by qntd_filhos -- 53

select idade, count(*) as Quantidade from tbDadosFunc group by idade order by idade DESC-- 54

select uf, count(*) as Total from tbDadosFunc GROUP by uf -- 55

select sindicalizado, count(*) as Total from tbFunc GROUP by sindicalizado -- 56

select cargo, salario from tbFunc order by salario DESC -- 57

select cargo, tempo_cargo, tempo_empresa from tbFunc order by tempo_empresa DESC -- 58

select cargo, tempo_cargo, tempo_empresa from tbFunc where cargo like 'Analista' order by tempo_empresa DESC-- 59

select f.cargo, f.tempo_cargo, f.tempo_empresa, f.sindicalizado from tbFunc f, tbDadosFunc df where f.codDadosFun = df.codDadosFun and f.sindicalizado = 1 
	order by f.tempo_empresa DESC -- 60