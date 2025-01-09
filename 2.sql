-- Task 2 :  Finding the Most Profitable Product Line for Each Branch
select * from walmart_sales;
ALTER TABLE walmart_sales
CHANGE COLUMN `Product_line` `Product_line` VARCHAR(255);

ALTER TABLE walmart_sales
CHANGE COLUMN `gross_income` `gross_income` DECIMAL(10, 2);


SELECT Branch, Product_line, 
       SUM(gross_income) AS Profit
FROM walmart_sales
GROUP BY Branch, Product_line
ORDER BY Branch, Profit DESC;
