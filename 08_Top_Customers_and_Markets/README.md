# Customer Sales Share by Region

## Description
This query calculates each customer's percentage contribution to total net sales within their region for fiscal year 2021.

## Concepts Used
- CTE (WITH clause)
- SUM()
- Window Functions
- OVER()
- PARTITION BY
- ORDER BY

## Tables Used
- net_sales
- dim_customer

## Output
Shows customer, region, net sales (in millions), and percentage share within each region.
