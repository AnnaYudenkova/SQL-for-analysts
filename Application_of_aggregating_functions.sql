-- Добавление новых столбцов в таблицу с использованием агрегирующих функций
SELECT MIN(total),
       MAX(total),
       ROUND(AVG(total)),
       COUNT (DISTINCT customer_id),
       SUM(total)
FROM invoice
WHERE EXTRACT(MONTH FROM CAST(invoice_date AS timestamp)) = 9
  AND customer_id in (11, 13, 44, 36, 48, 52, 54, 56);
