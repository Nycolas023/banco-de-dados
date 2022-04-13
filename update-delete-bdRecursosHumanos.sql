USE bdRecursosHumanos

SELECT * FROM tbFuncionario
SELECT * FROM tbDepto
SELECT * FROM tbDependente

INSERT tbDepto (nomeDepto)
VALUES ('Desenvolvimento')

INSERT tbFuncionario(nomeFuncionario,cpfFuncionario, rgFuncionario, idDepto)
VALUES ('Vanessa Ferraz', '98765432', '3245678', 4)

UPDATE tbFuncionario
SET nomeFuncionario = 'Clodoaldo Bastos', idDepto = 4
WHERE idFuncionario = 1 

UPDATE tbFuncionario
SET idDepto = 2
WHERE idFuncionario = 2

UPDATE tbFuncionario
SET nomeFuncionario = 'Mayara Caroline'
WHERE rgFuncionario = '34569876'


INSERT tbDependente(nomeDependente, dtNasctoDependente, idFuncionario)
VALUES ('Ermenegildo Bastos', '01/04/2000', 1)
	, ('Florisbela Bastos', '01/04/2000', 1)

SELECT * FROM tbDependente

UPDATE tbDependente
SET idFuncionario = 3
WHERE idDependente = 1 OR idDependente = 2

UPDATE tbFuncionario
SET idDepto = 5
WHERE idDepto = 4 AND idFuncionario >= 3

SELECT * FROM tbFuncionario

UPDATE tbFuncionario
SET idDepto = 5
WHERE nomeFuncionario = 'Mayara Caroline'

UPDATE tbFuncionario
SET idDepto = 2

SELECT * FROM tbDepto

DELETE FROM tbDepto
WHERE idDepto = 2

SELECT * FROM tbFuncionario

UPDATE tbFuncionario
SET nomeFuncionario = 'Clodoaldo Bastos'

DELETE FROM tbDependente

SELECT * FROM tbDependente