-- Task 8 : Identifying Repeat Customers

-- Using subquery 

select * from walmart_sales;

SELECT DISTINCT ws1.Customer_ID, 
       STR_TO_DATE(ws1.Date, '%d-%m-%Y') AS Transaction_Date,
       ws1.Time AS Transaction_Time
FROM walmart_sales ws1
JOIN walmart_sales ws2
ON ws1.Customer_ID = ws2.Customer_ID
   AND ws1.Invoice_ID != ws2.Invoice_ID
   AND ABS(DATEDIFF(
            STR_TO_DATE(ws1.Date, '%d-%m-%Y'),
            STR_TO_DATE(ws2.Date, '%d-%m-%Y')
       )) <= 30;
