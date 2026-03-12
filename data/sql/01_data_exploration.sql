
-- explore dataset

SELECT *
FROM events
LIMIT 10;

-- total rows

SELECT COUNT(*)
FROM events;

-- event distribution

SELECT
event_type,
COUNT(*) AS total_events
FROM events
GROUP BY event_type
ORDER BY total_events DESC;

-- unique users

SELECT COUNT(DISTINCT user_id)
FROM events;
