
# Zepto SQL Data Analysis Project

## 📌 Overview

This project simulates a real-world data analyst workflow using an e-commerce dataset inspired by Zepto. The focus is on transforming raw, messy data into meaningful business insights using SQL.

---

## 🎯 Objectives

* Clean and preprocess raw inventory data
* Design a structured relational database
* Perform exploratory data analysis (EDA)
* Generate business insights on pricing, discounts, and inventory

---

## 🗂️ Dataset Description

The dataset contains product-level information including:

* Category
* Product Name
* MRP (Maximum Retail Price)
* Discount Percentage
* Selling Price
* Available Quantity
* Stock Availability
* Product Weight

---

## 🧹 Data Cleaning Steps

* Removed invalid entries (MRP = 0)
* Converted price values from paise to rupees
* Checked and handled NULL values
* Identified duplicate product entries
* Standardized data types (especially boolean fields)

---

## 📊 Key Business Insights

### 1. Pricing & Discounts

* Identified top discounted products
* Found products with high MRP but low discount

### 2. Inventory Analysis

* Compared in-stock vs out-of-stock products
* Estimated total inventory value per category

### 3. Category Performance

* Calculated revenue contribution by category
* Identified categories offering highest average discounts

### 4. Product Efficiency

* Computed price per gram to find best-value products
* Categorized products based on weight (low, medium, bulk)

---

## 🛠️ Tools & Technologies

* MySQL
* SQL (Joins, Aggregations, CASE statements)
* Data Cleaning Techniques

---

## 📈 Key Queries Implemented

* Aggregations (SUM, AVG, COUNT)
* Grouping & Filtering (GROUP BY, HAVING)
* Conditional logic using CASE
* Sorting & Ranking (ORDER BY, LIMIT)

---

## 🚀 Outcome

This project strengthened my ability to:

* Work with real-world messy datasets
* Think in terms of business problems, not just queries
* Extract actionable insights using SQL

---

## 📌 Future Improvements

* Build a dashboard using Power BI
* Automate data pipeline using Python
* Add trend-based analysis if time-series data is available
