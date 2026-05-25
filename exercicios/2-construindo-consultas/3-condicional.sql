CASE
WHEN condição THEN faça isso
ELSE faça outra coisa
END AS titulo-coluna

-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country AS Pais,
State AS estado_sigla,
CASE
  When State = 'sp' THEN 'São Paulo'
  When State = 'rj' THEN 'Rio de Janeiro'
  ELSE 'Estado Desconhecido'
END AS Estados
FROM
customers
WHERE
Country LIKE 'Brazil';

