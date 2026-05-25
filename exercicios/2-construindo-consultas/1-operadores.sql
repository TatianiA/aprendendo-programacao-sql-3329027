Operadores
Aritméticos
Logicos
Relacionais

-- Construa uma consulta para a tabela "invoice_items" que retorne apenas as colunas InvoiceId, TrackId e UnitPrice.
SELECT
TrackID,
UnitPrice
FROM
Invoice_items;
-- Inclua nessa consulta mais três colunas, cada uma como resultado de uma operação aritmética diferente
SELECT
TrackID,
UnitPrice,
UnitPrice * 3,
UnitPrice + 8,
(UnitPrice + 8) - 5
FROM
Invoice_items
WHERE InvoiceId != 5
-- Incremente essa consulta utilizando a cláusula WHERE, a qual restringirá o resultado apenas para linhas cujo o InvoiceId seja maior do que 20 e menor ou igual a 30
SELECT
TrackID,
UnitPrice,
UnitPrice * 3,
UnitPrice + 8,
(UnitPrice + 8) - 5
FROM
Invoice_items
WHERE 
InvoiceId > 20
AND InvoiceId <= 30;

OR
SELECT
TrackID,
UnitPrice,
UnitPrice * 3,
UnitPrice + 8,
(UnitPrice + 8) - 5
FROM
Invoice_items
WHERE 
InvoiceId = 3
OR InvoiceId < 20 ;

NOT
SELECT
TrackID,
UnitPrice,
UnitPrice * 3,
UnitPrice + 8,
(UnitPrice + 8) - 5
FROM
Invoice_items
WHERE NOT
InvoiceId != 8;
