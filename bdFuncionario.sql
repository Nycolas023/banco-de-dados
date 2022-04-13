CREATE DATABASE bdFuncionario

USE bdFuncionario
go
-- Tabela 1
CREATE TABLE tbDadosFunc(
	codDadosFun INT PRIMARY KEY IDENTITY(1,1)
	,nome_Func VARCHAR(70) NOT NULL
	,uf	VARCHAR(50) NOT NULL
	,idade INT
	,qntd_filhos INT
)

-- Tabela 2
CREATE TABLE tbFunc (
	codFunc INT PRIMARY KEY IDENTITY(1,1)
	,cargo VARCHAR(70) NOT NULL
	,salario SMALLMONEY NOT NULL
	,tempo_empresa INT NOT NULL
	,tempo_cargo INT NOT NULL
	,sindicalizado CHAR NOT NULL
	,codDadosFun INT FOREIGN KEY REFERENCES tbDadosFunc(codDadosFun)
)
