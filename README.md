# VIX Salicy Sales Dashboard

<p align="center">
  <img src="https://github.com/riyouuyt/VIX-Salicy-Sales-Dashboard/assets/122600889/2ef0ad6f-67cb-4bcf-9eea-f128a2ddfd66" alt="Image Description" />
</p>


## Project Overview 🚀:
The Salicyl Sales Dashboard project at Kimia Farma revolves around the creation of a comprehensive dashboard for the sales data of the Salicyl brand over the course of a year. As a Big Data Analyst Intern familiar with Kimia Farma's sales data, your task involves processing the raw sales data to generate insights and develop a functional dashboard. This project aims to test your understanding of the end-to-end data processing required in the role of a Big Data Analyst at Kimia Farma.

## Objective 🎯:
The primary objective of this project is to utilize your knowledge and skills in handling sales data to create an intuitive and informative dashboard specifically for the Salicyl brand. By processing and analyzing the provided raw data, the goal is to gain actionable insights that can be visually represented in the dashboard. This project serves as an opportunity for you to demonstrate your comprehension of data processing techniques and dashboard creation within the context of Kimia Farma's operations.

## Goals 📈:
- Process the raw sales data of the Salicyl brand over one year, ensuring accuracy and completeness.
- Analyze the processed data to extract meaningful insights and trends related to Salicyl sales performance.
- Develop a user-friendly dashboard that visually represents the key findings and metrics derived from the sales data.
- Demonstrate an understanding of the responsibilities and workflow of a Big Data Analyst at Kimia Farma through the completion of this project.

## Library for The Project:
* PostgreSQL
  
  ![image](https://github.com/riyouuyt/VIX-Salicy-Sales-Dashboard/assets/122600889/2557bb3b-ce4e-4ebf-920a-0ee0dfee52d1)
* Google Looker Studio
  
  ![image](https://github.com/riyouuyt/VIX-Salicy-Sales-Dashboard/assets/122600889/fe5943d7-c44f-4dd7-875d-5d120f9257e2)

# Projects Stages:

## Determining the Primary Key:
The primary key selection for the sales table seems to be a combination of 'id_invoice' and 'id_customer'. The rationale behind this choice is that both columns hold unique identifiers crucial for identifying each sales invoice. Given that a single invoice may encompass multiple distinct item codes, using a combination of 'id_invoice' and 'id_customer' ensures the uniqueness of each row in the table.

## Design Data Mart

As for the data transformation and design of the data mart, here's a brief summary:

1. Table Base Creation:

   * A new table named 'table_base' was created by joining `penjualan_data`, `barang_data`, and `pelanggan_data` tables.
   * This table contains various fields like `invoice ID`, `date`, `product details`, `pricing, customer information`, etc., derived from different source tables.
   * Calculation of the total price per product was performed (`jumlah_barang` * `harga`).

2. Table Aggregation:

   * The 'table_base' data was aggregated to create a summary table.
   * Fields such as `id_invoice`, `sales_date`, `id_customer`, `nama_customer`, `cabang_sales`, `id_distributor`, and `group_category` were included.
   * Aggregation functions were applied:
     * Counting the distinct number of products per invoice.
     * Summation of the total price for each product within an invoice.
    
3. Data Mart Result:
   
![Screenshot 2023-12-29 165633](https://github.com/riyouuyt/VIX-Salicy-Sales-Dashboard/assets/122600889/fb9849b7-faea-4238-8500-cd74c7498c69)


## Design The Dasboard

This sales dashboard was crafted using Google Looker Studio, providing comprehensive insights into Salicyl sales performance. The visualizations and analytics were designed to facilitate informed decision-making and enhance understanding of customer purchasing trends and revenue patterns.


![Dashboard](https://github.com/riyouuyt/VIX-Salicy-Sales-Dashboard/assets/122600889/8cf3bd3e-cae0-486e-98de-95e8d5eedf32)


