SELECT event_type, COUNT(*) AS count_of_events
FROM Events
GROUP BY event_type
ORDER BY count_of_events DESC;
