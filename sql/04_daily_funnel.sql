SELECT 
    DATE(event_time) AS event_date,

    COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) AS viewed,

    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchased,

    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) * 1.0 /
    NULLIF(COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END), 0) AS conversion

FROM Events

GROUP BY DATE(event_time)

ORDER BY event_date;
