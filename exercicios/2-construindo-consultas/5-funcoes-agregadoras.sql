-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
SUM (Total) as soma_compras --Coluna
FROM
invoices --tabela
WHERE
billingCity = 'London';--Coluna especifica nao vai aparecer

--Invoice Criar uma consuta com Pais 
SELECT
BillingCountry as Pais,
BillingCity as Cidade,
SUM (Total) as soma_compras
From invoices
WHERE BillingCountry = 'Austria';

--Invoice Criar uma Consulta com Quantidade, Valor Total, Maximo, Minimo e Media de Compras
-- Count Numero de compras, 
--SUM somar valor,
--MIN valor menor,
--Max valor maior,
--Round (,2) corta casas decimais apos virgula,
--AVG Media
SELECT
BillingCountry as Pais,
COUNT (Total) as Numero_compras,
SUM (Total) as Soma_compras,
MIN (Total) as Menor_compras,
MAX (Total) as Maior_compras,
ROUND (AVG (total),2) as Ticket_medio
From invoices
WHERE BillingCountry = 'Brazil';

SELECT
InvoiceId as Comanda,
BillingCity as Cidade,
BillingCountry as Pais,
Total as Valor_da_compra
FROM invoices
WHERE BillingCountry = 'Brazil';