---CREATING A CLEAN TABLE WITH CORRECT DATA TYPE FOR TIME DATA 

CREATE TABLE Clean_customer_support AS
SELECT 
ticket_id,
customer_name,
customer_email,
age,
customer_gender,
product_purchased,
TO_DATE(date_of_purchase, 'YYYY-MM-DD') as purchase_date,
ticket_type,
ticket_subject,
ticket_description,
ticket_status,
resolution,
ticket_priority,
ticket_channel,
NULLIF(first_response_time, '')::TIMESTAMP AS first_response,
NULLIF(time_to_resolution,'')::TIMESTAMP AS Resolution_time,
customer_satisfaction_rating
FROM customer_support;
