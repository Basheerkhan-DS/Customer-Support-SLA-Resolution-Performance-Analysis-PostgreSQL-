--ROW Validation
SELECT COUNT(*) FROM customer_support;
SELECT COUNT(*) FROM clean_customer_support;


--Primary key validation
SELECT COUNT(*) AS NULL_COUNT FROM clean_customer_support
WHERE ticket_id IS NULL;
SELECT COUNT(DISTINCT Ticket_id) AS Ticket_count FROM clean_customer_support

--Null Check
SELECT COUNT(*) AS NULL_FR FROM clean_customer_support
WHERE first_response IS NULL;

SELECT COUNT(*) AS NULL_RT FROM clean_customer_support
WHERE resolution_time IS NULL;

--logical consistency checks
SELECT COUNT(*) AS DATE_MISMATCH FROM clean_customer_support
WHERE resolution_time <= first_response;

--Status VS resolution Mismatch
SELECT COUNT(*) FROM clean_customer_support
WHERE ticket_status = 'Resolved' AND resolution_time IS NULL;

SELECT COUNT(*) FROM clean_customer_support
WHERE ticket_status != 'Resolved' AND resolution_time IS NOT NULL;

--Domain Check
SELECT DISTINCT ticket_priority FROM clean_customer_support;
SELECT DISTINCT ticket_channel FROM clean_customer_support;
SELECT DISTINCT ticket_status FROM clean_customer_support;
SELECT DISTINCT ticket_type FROM clean_customer_support;
