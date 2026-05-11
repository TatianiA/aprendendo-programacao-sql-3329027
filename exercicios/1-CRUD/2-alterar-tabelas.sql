-- Na tabela salario_classe altere o atributo "nivel" para que seu tipo de dado seja varchar, com tamanho máximo de 50 caracteres
Alter table Salario_Base
RENAME COLUMN

UPDATE Salario_Base
set Nivel = "Iniciante"
where Nivel = "iniciante";


-- Na tabela employees, adicione uma coluna para receber o id_salario
ALTER TABLE employees
ADD id_salario INTEGER;




