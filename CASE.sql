SELECT fax,
      CASE WHEN fax IS NOT NULL THEN 'информация есть'
      WHEN fax IS  NULL THEN 'информации нет'
      END
FROM client;
