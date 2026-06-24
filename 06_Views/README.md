# SQL Views

## Description

This project demonstrates how SQL Views simplify complex analytical queries by encapsulating reusable logic.

## Views Created

### sales_preinv_discount

Combines sales, customer, product, gross price, and pre-invoice discount information.

### sales_postinv_discount

Adds post-invoice discounts and calculates net invoice sales.

### net_sales

Calculates final net sales after all discounts.

## SQL Concepts Used

- CREATE VIEW
- INNER JOIN
- Calculated Columns
- Star Schema
- Reusable SQL Logic

## Tables Used

- fact_sales_monthly
- dim_customer
- dim_product
- fact_gross_price
- fact_pre_invoice_deductions
- fact_post_invoice_deductions
