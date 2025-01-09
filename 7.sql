-- Task 7:  Best Product Line by Customer Type

SELECT Customer_type, 
       Product_line, 
       SUM(Total) AS Total_Sales
FROM walmart_sales
GROUP BY Customer_type, Product_line
ORDER BY Customer_type, Total_Sales DESC;
 