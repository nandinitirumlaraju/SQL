CREATE PROCEDURE get_top_n_customers_by_net_sales(
    IN in_market VARCHAR(45),
    IN in_fiscal_year INT,
    IN in_top_n INT
)
BEGIN
    SELECT
        c.customer,
        ROUND(SUM(n.net_sales)/1000000,2) AS net_sales_mln
    FROM net_sales n
    JOIN dim_customer c
        ON n.customer_code = c.customer_code
    WHERE n.market = in_market
      AND n.fiscal_year = in_fiscal_year
    GROUP BY c.customer
    ORDER BY net_sales_mln DESC
    LIMIT in_top_n;
END;
