--Slowest Resolved Tickets
SELECT
    ticket_id,
    ticket_priority,
    resolution_hours,
    RANK() OVER (ORDER BY resolution_hours DESC) AS resolution_rank
FROM time_metric
LIMIT 10;

--Resolution speed Bucket
WITH bucketed_tickets AS (
    SELECT *,
        CASE
            WHEN resolution_hours <= 2 THEN 'Fast'
            WHEN resolution_hours <= 6 THEN 'Medium'
            ELSE 'Slow'
        END AS resolution_bucket
    FROM time_metric
)
SELECT
    resolution_bucket,
    COUNT(*) AS ticket_count,
    ROUND(AVG(customer_satisfaction_rating)::numeric,2) AS avg_rating
FROM bucketed_tickets
GROUP BY resolution_bucket;
