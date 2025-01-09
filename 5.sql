-- Task 5 : Most Popular Payment Method by City
select * from walmart_sales;

SELECT City, Payment, 
       COUNT(Payment) AS Usage_Count
FROM walmart_sales
GROUP BY City, Payment
ORDER BY City, Usage_Count DESC;


