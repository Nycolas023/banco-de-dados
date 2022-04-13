/*
bdRevisao
tbFuncionario (codFuncionario, nomeFuncionario, dataContratacao, 
	salarioFuncionario, codDepto)
tbDepto(codDepto, nomeDepto)
tbDependente(codDependente, nomeDependente, dataNasctoDependente, codFuncionario)
*/

CREATE DATABASE bdRevisao

--DROP DATABASE bdRevisao
-- apaga o banco inteiro

USE bdRevisao

CREATE TABLE tbDepto(
	codDepto INT PRIMARY KEY IDENTITY(1,1)
	, nomeDepto VARCHAR(30) NOT NULL
)

--DROP TABLE tbDepto
-- apaga só a tabela especificada

CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY(1,1)
	, nomeFuncionario VARCHAR(50) NOT NULL
	, dataContratacao SMALLDATETIME NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL
	, codDepto INT FOREIGN KEY REFERENCES tbDepto(codDepto)
)

CREATE TABLE tbDependente(
	codDepentende INT PRIMARY KEY IDENTITY(1,1)
	, nomeDependente VARCHAR(50) NOT NULL
	, dataNasctoDependente SMALLDATETIME NOT NULL
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)