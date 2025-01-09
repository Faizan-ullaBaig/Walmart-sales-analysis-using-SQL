-- Task 3 :  Analyzing Customer Segmentation Based on Spending
Select * from walmart_sales;

ALTER table walmart_sales
CHANGE COLUMN `Customer ID` `Customer_ID` INT(5);

SELECT Branch, 
       Customer_ID, 
       SUM(Total) AS Total_Spent,
       CASE 
           WHEN SUM(Total) >= 10000 THEN 'High'
           WHEN SUM(Total) >= 5000 THEN 'Medium'
           ELSE 'Low'
       END AS Spending_Tier
FROM walmart_sales
GROUP BY Branch, Customer_ID
ORDER BY Branch, Total_Spent DESC;
