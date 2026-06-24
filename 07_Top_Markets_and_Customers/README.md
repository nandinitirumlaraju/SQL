# Top Markets and Customers

## Description

This project uses stored procedures to dynamically retrieve top markets and top customers based on net sales.

## SQL Concepts Used

- Stored Procedures
- Input Parameters
- JOIN
- GROUP BY
- Aggregate Functions
- ORDER BY
- LIMIT
- Views

## Procedures

### get_top_n_markets_by_net_sales()

Example:

```sql
CALL get_top_n_markets_by_net_sales(2020,7);
```

### get_top_n_customers_by_net_sales()

Example:

```sql
CALL get_top_n_customers_by_net_sales('India',2021,7);
```

## Output

Returns top markets and customers ranked by net sales.
