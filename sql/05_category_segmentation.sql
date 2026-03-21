SELECT 
    category_code,

    COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) AS users_viewed,

    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS users_purchased,

    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) * 1.0 /
    NULLIF(COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END), 0) AS conversion

FROM Events

GROUP BY category_code

ORDER BY conversion DESC;
