--Average resolution Hours

SELECT ROUND(AVG(resolution_hours),2) AS AVG_resolution_time 
FROM time_metric;

--Average resolution time by priority
SELECT ticket_priority,ROUND(AVG(resolution_hours),2) 
FROM time_metric
GROUP BY ticket_priority;

--Average resolution time by Ticket_channel
SELECT ticket_channel,ROUND(AVG(resolution_hours),2) 
FROM time_metric
GROUP BY ticket_channel;

--Average resolution time by ticket_type 
SELECT ticket_type,ROUND(AVG(resolution_hours),2) 
FROM time_metric
GROUP BY ticket_type;

--Max resoltuion time(SLA boundry check)
SELECT MAX(resolution_hours) AS MAX_time
FROM time_metric;

--P90 Resoltuion time 
SELECT PERCENTILE_CONT(0.90) WITHIN 
GROUP (ORDER BY resolution_hours) AS p90_resolution_hours
FROM time_metric;

--SLA Bucket VS CSAT
SELECT
    CASE
        WHEN resolution_hours <= 2 THEN '0–2 hrs'
        WHEN resolution_hours <= 6 THEN '2–6 hrs'
        WHEN resolution_hours <= 12 THEN '6–12 hrs'
        ELSE '12–24 hrs'
    END AS resolution_bucket,
    ROUND(AVG(customer_satisfaction_rating)::numeric,2) AS avg_rating
FROM time_metric
GROUP BY resolution_bucket
ORDER BY resolution_bucket;
