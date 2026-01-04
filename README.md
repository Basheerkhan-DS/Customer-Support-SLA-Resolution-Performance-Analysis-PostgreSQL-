📌 Project Overview

This project analyzes customer support ticket data to evaluate operational efficiency, SLA adherence, and customer satisfaction trends using PostgreSQL.

📌 Dataset

Total tickets analyzed: 8,469

Ticket statuses: Open, Closed, Pending Customer Response

Channels: Email, Phone, Chat, Social Media

Priorities: Low, Medium, High, Critical

📌 Key Data Quality Findings

33% of tickets had missing first-response timestamps

67% had missing resolution timestamps

Time inconsistencies were identified and excluded from SLA analysis

Only logically valid resolved tickets were used for time-based metrics

📌 Key Metrics & Insights

Average resolution time: 7.58 hours

Maximum resolution time: 23.47 hours

90th percentile resolution time: 16 hours

Resolution times varied marginally across channels and priorities

High-priority tickets did not consistently receive faster resolution

Customer satisfaction showed variation across resolution-speed buckets

📌 Techniques Used

Data cleaning & validation

Timestamp conversion & time-difference calculations

Aggregations & percentiles

Window functions (RANK)

CTE-based segmentation

Business KPI analysis
