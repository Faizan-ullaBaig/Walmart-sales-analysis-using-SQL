-- Task 1 :  Identifying the Top Branch by Sales Growth Rate
use internshala_project;
select * from walmart_sales;

SELECT Branch, MONTH(Date) AS month, 
       SUM(Total) AS total_sales
FROM walmart_sales
GROUP BY Branch, month
ORDER BY Branch, month;

-- STR_TO_DATE(Date, '%d-%m-%y'): Converts the string into a valid DATE format.

SELECT Branch, MONTH(STR_TO_DATE(Date, '%d-%m-%y')) AS Month, 
SUM(Total) AS total_sales
FROM walmart_sales
GROUP BY Branch, Month
ORDER BY Branch, Month;
