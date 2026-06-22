-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
sum(inv.Total) AS total_gasto,
Count(inv.Total) As quant_compras
FROM
invoices AS inv
INNER JOIN customers AS cus on inv.CustomerId = cus.CustomerId
Group By id_cliente
HAVING SUM(inv.Total) <=40;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
sum(inv.Total) AS total_gasto,
Count(inv.Total) As quant_compras
FROM
invoices AS inv
INNER JOIN customers AS cus on inv.CustomerId = cus.CustomerId
Group By id_cliente
HAVING SUM(inv.Total) >=30;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
sum(inv.Total) AS total_gasto,
Count(inv.Total) As quant_compras,
 MAX(inv.Total) AS maior_compra
FROM
invoices AS inv
INNER JOIN customers AS cus on inv.CustomerId = cus.CustomerId
Group By cus.CustomerId,
cus.FirstName
ORDER BY
total_gasto DESC
LIMIT 1;
