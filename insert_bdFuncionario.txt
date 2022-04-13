USE bdFuncionario
go
-- Cadastrando a primeira tabela (tbDadosFunc)
INSERT INTO tbDadosFunc(nome_Func, uf, idade, qntd_filhos)
VALUES ('Joel Lira Filho', 'São Paulo', 55, 3) --1
		,('Maria Florentina Almeida', 'Rio de Janeiro', 36, 0) --2
		,('Caetano Veloso Almeida', 'Ceará', 70, 8) --3
		,('Marcos Ivã Filho', 'São Paulo', 22, 1) --4
		,('Cezar Menott', 'Bahia', 47, 2) --5
		,('Emanuel Costa Chico', 'Bahia', 37, 1) --6
		,('Rosalita Vanilda', 'Paraíba', 61, 0) --7
		,('Ana Carla Ramos', 'Ceará', 39, 4) --8
		,('Joselito Picilico', 'Ceará', 36, 0) --9
		,('Soares Junior', 'São Paulo', 29, 0) --10

SELECT*FROM tbFunc
go
-- Cadastrando a segunda tabela(tbFunc) 
INSERT INTO tbFunc(cargo,salario,tempo_empresa,tempo_cargo,sindicalizado,codDadosFun)
VALUES	('Programador', 5000.00, 8,4,1,10)--1 
		,('Analista', 3500.00, 5,1,1,9)--2
		,('Gerente', 8110.00, 15,6,1,8)--3
		,('Programador', 900.00, 1,1,0,7)--4
		,('Designer', 100.00, 2,1,0,6)--5
		,('Designer', 1450.00, 4,4,1,5)--6
		,('Analista', 2080.00, 9,5,1,4)--7
		,('Gerente', 4890.00, 7,5,1,3)--8
		,('Gerente', 1850.00, 5,1,0,2)--9
		,('Analista', 450.00, 8,4,0,1)--10


