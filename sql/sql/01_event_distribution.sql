SELECT event_type, COUNT(*) AS count_of_events
FROM events
GROUP BY event_type
ORDER BY count_of_events DESC;
