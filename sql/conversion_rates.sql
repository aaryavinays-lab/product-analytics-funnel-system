SELECT
    SUM(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) AS views,
    SUM(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END) AS carts,
    SUM(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchases,

    SUM(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END) * 1.0
    /
    SUM(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END)
    AS view_to_cart_conversion,

    SUM(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) * 1.0
    /
    SUM(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END)
    AS cart_to_purchase_conversion,

    SUM(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) * 1.0
    /
    SUM(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END)
    AS view_to_purchase_conversion

FROM Events;
