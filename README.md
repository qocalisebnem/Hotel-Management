# Hotel-Management
# Hotel Management System - Advanced SQL Analytics 🏨📊

This project focuses on the database architecture and business intelligence analysis of a modern Hotel Management System. It involves creating a robust relational database schema and executing complex SQL queries to derive actionable insights regarding revenue, customer behavior, and operational efficiency.

## 🛠 Technologies Used
- **Database:** Oracle SQL 
- **Analytical Concepts:** Complex Joins, Subqueries, Aggregations, Data Transformation, and Conditional Logic (`NVL`, `TO_CHAR`).

## 📊 Database Schema
The system is built on an interconnected relational structure:
- **Core Entities:** `customer`, `employee`, `room`.
- **Operational Entities:** `reservation`, `booking`.
- **Financial & Feedback:** `invoice`, `transactions`, `services`, `customer_services`, and `satisfaction`.

## 🔍 Key Insights & Business Logic (SQL Queries)

The project includes advanced SQL scripts to answer critical business questions:

### 1. Financial Performance
- **Customer Revenue Analysis:** Calculates total room and service charges per customer to identify high-value clients.
- **Monthly Revenue & Reservation Trends:** Analyzes seasonal performance by tracking income and booking counts month-over-month.
- **Automated Invoicing:** Generates the "Grand Total" for invoices by merging room prices with dynamic service costs using `NVL` to handle nulls.
- **Profitability Analysis:** Identifies the most profitable room types (e.g., VIP) and the highest-earning additional services.

### 2. Operational & Staff Efficiency
- **Receptionist Performance:** Tracks the total number of bookings processed by each receptionist to evaluate workload and efficiency.
- **Booking Volume:** Measures customer density per month to assist in staff scheduling and resource allocation.

### 3. Customer Segmentation & Marketing
- **VIP Identification:** Specifically targets customers staying in maximum-priced rooms for loyalty programs.
- **Underutilized Services:** Identifies customers who haven't used any extra services, providing a base for targeted cross-selling marketing campaigns.

### 4. Quality Assurance
- **Satisfaction Trend Analysis:** Monitors the average satisfaction level over time to ensure service quality remains consistent during peak and off-peak months.

## 🚀 How to Use

1. Download the `hotel_management.sql` file.
2. Open the script in your preferred SQL editor (e.g., Oracle SQL Developer, DataGrip).
3. Execute the DDL/DML scripts to create the tables and populate them with sample data.
4. Run the analytical queries provided in the script to generate business reports.

