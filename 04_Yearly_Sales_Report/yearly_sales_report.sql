SELECT
    get_fiscal_year(date) AS fiscal_year,
    SUM(ROUND(sold_quantity*g.gross_price,2)) AS yearly_sales
FROM fact_sales_monthly s
JOIN fact_gross_price g
ON g.fiscal_year = get_fiscal_year(s.date)
AND g.product_code = s.product_code
WHERE customer_code = 90002002
GROUP BY get_fiscal_year(date)
ORDER BY fiscal_year;
