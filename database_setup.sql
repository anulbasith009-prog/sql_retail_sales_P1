-- SQL Retail Sales Analysis - Database Setup

-- CREATE TABLE
CREATE TABLE retail_sales(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit NUMERIC(10,2),
    cogs NUMERIC(10,2),
    total_sale NUMERIC(10,2)
);

-- Fix column name typo (if exists)
ALTER TABLE retail_sales
RENAME COLUMN quantiy TO quantity;

-- Check for NULL values
SELECT *
FROM retail_sales
WHERE
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantity IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;

-- Remove rows with NULL values
DELETE FROM retail_sales
WHERE
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantity IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;
