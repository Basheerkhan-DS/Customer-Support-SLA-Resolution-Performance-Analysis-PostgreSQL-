CREATE VIEW time_metric AS(
SELECT 
ticket_id,
customer_name,
customer_email,
age,
customer_gender,
product_purchased,
purchase_date,
ticket_type,
ticket_subject,
ticket_description,
ticket_status,
resolution,
ticket_priority,
ticket_channel,
first_response,
resolution_time,
customer_satisfaction_rating,
ROUND(EXTRACT(EPOCH FROM (resolution_time - first_response))/3600,2) as resolution_Hours -- divided by 3600 to convert to hours 
FROM clean_customer_support
WHERE resolution_time IS NOT NULL and first_response IS NOT NULL AND resolution_time >=first_response);
