-- Task 4 :  Detecting Anomalies in Sales Transactions
Select * from walmart_sales;

ALTER TABLE walmart_sales
CHANGE COLUMN `Invoice ID` `Invoice_ID` VARCHAR(20);

-- Anomalies are defined as values that are unusually high or low compared to the average.

SELECT Invoice_ID, Total, Product_line
FROM walmart_sales
WHERE Total > (SELECT AVG(Total) + 2 * STDDEV(Total) FROM walmart_sales)
-- This condition finds transactions where the Total is greater than the average sales (calculated by AVG(Total)) plus two times the standard deviation (2 * STDDEV(Total)).
   OR Total < (SELECT AVG(Total) - 2 * STDDEV(Total) FROM walmart_sales);
-- This condition finds transactions where the Total is less than the average sales minus two times the standard deviation.


-- 2nd condition to show anomaly status

SELECT Invoice_ID, 
       Total, 
       Product_line,
       CASE
           WHEN Total > (SELECT AVG(Total) + 2 * STDDEV(Total) FROM walmart_sales) THEN 'High Anomaly'
           WHEN Total < (SELECT AVG(Total) - 2 * STDDEV(Total) FROM walmart_sales) THEN 'Low Anomaly'
           ELSE 'Normal'
       END AS Anomaly_Status
FROM walmart_sales
WHERE Total > (SELECT AVG(Total) + 2 * STDDEV(Total) FROM walmart_sales)
   OR Total < (SELECT AVG(Total) - 2 * STDDEV(Total) FROM walmart_sales);
