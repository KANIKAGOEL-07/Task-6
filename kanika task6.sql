use practice_db;

# SHOW ALL COLUMNS AND ROWS?
select * FROM sales_data_sample;
 


#1 Use EXTRACT(MONTH FROM order_date) for month.
SELECT 
    EXTRACT(MONTH FROM ORDERDATE ) AS order_month
FROM 
    sales_data_sample
GROUP BY 
    EXTRACT(MONTH FROM ORDERDATE)
ORDER BY 
    order_month;

#2 GROUP BY year/month IN SQL?    
SELECT 
EXTRACT(YEAR FROM ORDERDATE) AS order_year,
EXTRACT(MONTH FROM ORDERDATE) AS order_month
FROM sales_data_sample
   GROUP BY 
    order_year, order_month;
    
# 3 use SUM() for revenue?
select SUM(SALES) AS total_revenue
FROM 
    sales_data_sample;

#COUNT(DISTINCT customerID for volume.?
SELECT COUNT(DISTINCT QUANTITYORDERED ) AS order_volume
FROM 
   sales_data_sample;


#Limit results for specific time periods?
SELECT * FROM  sales_data_sample
WHERE 
    ORDERDATE BETWEEN '2/24/2003 0:00' AND '11/24/2004 0:00'
limit 5;