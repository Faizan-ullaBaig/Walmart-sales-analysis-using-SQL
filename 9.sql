-- Task 9: Finding Top 5 Customers by Sales Volume

SELECT Customer_ID, 
       Branch, 
       City, 
       Customer_Type, 
       SUM(Total) AS Total_Spent
FROM walmart_sales
GROUP BY Customer_ID, Branch, City, Customer_Type
ORDER BY Total_Spent DESC
LIMIT 5;
