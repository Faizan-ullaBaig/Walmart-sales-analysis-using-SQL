-- task 6 :  Monthly Sales Distribution by Gender


SELECT MONTH(STR_TO_DATE(Date, '%d-%m-%y')) AS Month,
       Gender,
       SUM(Total) AS Total_Sales
FROM walmart_sales
GROUP BY MONTH(STR_TO_DATE(Date, '%d-%m-%y')), Gender
ORDER BY Month, Gender;
