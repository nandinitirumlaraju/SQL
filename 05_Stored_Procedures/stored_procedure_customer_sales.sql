CREATE PROCEDURE get_monthly_gross_sales_for_customer
(
    in_customer_code TEXT
)
BEGIN

SELECT
    get_fiscal_year(date) AS fiscal_year,
    SUM(ROUND(s.sold_quantity * g.gross_price,2)) AS yearly_sales
FROM fact_sales_monthly s
JOIN fact_gross_price g
ON g.fiscal_year = get_fiscal_year(s.date)
AND g.product_code = s.product_code
WHERE FIND_IN_SET(s.customer_code,in_customer_code) > 0
GROUP BY get_fiscal_year(date)
ORDER BY fiscal_year;

END
