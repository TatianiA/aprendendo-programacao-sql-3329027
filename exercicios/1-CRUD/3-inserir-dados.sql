-- Insira 3 classes salariais na tabela salario_classe
INSERT into Salario_Base (Id, Nivel, Salario, employees,SalarioBase)
VALUES
(1,"iniciante",1200, "estagiario", 1200),
(2,"Intermediario",2400, "Pleno", 2400);
(3,"Esperiente",3600, "Senior", 3600),
(4,"Expert",4800, "Prime", 4800);


-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT into Salario_Base (Nivel, Salario, employees,SalarioBase)
VALUES
("Lider", 5200, "Gerencia", 5200);