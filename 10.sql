-- Task 10: Analyzing Sales Trends by Day of the Week

SELECT DAYNAME(STR_TO_DATE(Date, '%d-%m-%y')) AS Day_of_Week,
       SUM(Total) AS Total_Sales
FROM walmart_sales
GROUP BY Day_of_Week
ORDER BY Total_Sales DESC;
