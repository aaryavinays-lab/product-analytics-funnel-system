SELECT
   SUM(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) AS views,
   SUM(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END) AS carts,
   SUM(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchases
FROM Events;
