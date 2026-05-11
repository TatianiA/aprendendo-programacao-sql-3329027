-- Na tabela salario_classe altere o atributo "nivel" para que seu tipo de dado seja varchar, com tamanho máximo de 50 caracteres
ALTER TABLE Salario_Base
DROP Salario;

ALTER TABLE Salario_Base 
drop employees;

ALTER TABLE Salario_Base_nova 
RENAME TO Salario_Base;

ALTER TABLE Salario_Base DROP COLUMN Salario;
-- Na tabela employees, adicione uma coluna para receber o id_salario
