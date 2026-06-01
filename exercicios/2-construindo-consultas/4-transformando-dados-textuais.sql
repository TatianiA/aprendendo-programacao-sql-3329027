-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
CustomerID AS ID,
FirstName AS Nome,
LastName AS Sobrenome,
Address AS Endereco
FROM customers
WHERE 
Country LIKE 'Bra%';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
CustomerID AS ID,
UPPER(FirstName) AS Nome,
UPPER(LastName) AS Sobrenome,
Address AS Endereco
FROM customers
WHERE 
Country LIKE 'Bra%';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
CustomerID AS ID,
LOWER(FirstName) AS Nome,
LOWER(LastName) AS Sobrenome,
Address AS Endereco
FROM customers
WHERE 
Country LIKE 'Bra%';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
CustomerID AS ID,
UPPER(FirstName) AS Nome,
UPPER(LastName) AS Sobrenome,
FirstName ||''|| LastName AS Nome_Completo,
Address AS Endereco
FROM customers
WHERE 
Country LIKE 'Bra%';

-- Em SQL pode ser usar CONCAT 

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
CustomerID AS ID,
UPPER(FirstName) AS Nome,
UPPER(LastName) AS Sobrenome,
FirstName ||''|| LastName AS Nome_Completo,
REPLACE(Address, 'Av.','Avenida') AS Endereco
FROM customers
WHERE 
Country LIKE 'Brazoil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT DISTINCT
CustomerID AS ID,
UPPER(FirstName) AS Nome,
UPPER(LastName) AS Sobrenome,
FirstName ||''|| LastName AS Nome_Completo,
REPLACE(Address, 'Av.','Avenida') AS Endereco
FROM customers
WHERE 
Country LIKE 'Bra%';