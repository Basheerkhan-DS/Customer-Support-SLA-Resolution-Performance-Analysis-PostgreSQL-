# Customer Support Ticket Analysis (SQL)

## 📌 Project Overview
This project analyzes customer support ticket data to evaluate resolution performance, SLA compliance, and customer satisfaction using PostgreSQL SQL.

The goal is to simulate a real-world Data Analyst workflow:
- Raw data ingestion
- Data cleaning and validation
- KPI and SLA metric creation
- Business-focused insights

---

## 🛠️ Tools & Technologies
- PostgreSQL
- SQL (CTEs, Window Functions, Percentiles)
- GitHub for version control

---

## 📂 Project Structure

sql/
- 01_table_creation.sql      → Raw table schema
- 02_data_cleaning.sql       → Data type correction & cleaning
- 03_data_validation.sql     → Data quality checks
- 04_time_metrics_view.sql   → Resolution time view
- 05_core_kpis.sql           → SLA & performance KPIs
- 06_advanced_analysis.sql   → Ranking & bucket analysis

---

## 📊 Key Metrics & Analysis
- Average ticket resolution time
- Resolution time by priority, channel, and ticket type
- SLA compliance (max resolution < 24 hours)
- P90 resolution time
- Resolution speed vs customer satisfaction
- Identification of slowest resolved tickets

---

## 🔍 Key Findings
- Maximum resolution time was **23.47 hours**, no ticket breached 24-hour SLA
- **90% of tickets resolved within 16 hours**
- Faster resolutions showed higher customer satisfaction
- High-priority tickets had longer resolution times than Critical tickets
- Email and Social Media channels were slower compared to Phone

---

## 🎯 Business Impact
This analysis helps:
- Identify SLA risks early
- Optimize support channel performance
- Improve customer satisfaction through faster resolutions
- Prioritize operational improvements using data-driven insights
