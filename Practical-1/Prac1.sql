--Question 1
SELECT * 
FROM SALES
LIMIT 10;

--Question 2
SELECT Transaction_ID,
    Date,
    Customer_ID
FROM SALES
LIMIT 10;

--Question 3
SELECT DISTINCT(Product_Category)
FROM SALES;

--Question 4
SELECT DISTINT(Gender)
FROM SALES;

--Question 5
SELECT *
FROM SALES
WHERE Age > 40;

--Question 6
SELECT * 
FROM SALES 
WHERE PRICE_PER_UNIT BETWEEN 100 AND 500;

--Question 7
SELECT *
FROM SALES 
WHERE PRODUCT_CATEGORY = 'Beauty' OR PRODUCT_CATEGORY = 'Electronics';

--Question 8 
SELECT * 
FROM SALES 
WHERE PRODUCT_CATEGORY IS NOT 'Clothing';

--Question 9
SELECT * 
FROM SALES
WHERE QUANTITY >=3;

--Question 10
SELECT COUNT(Transaction_ID) AS Total_transations
FROM SALES;

--Question 11
SELECT AVG(AGE) AS Average_Age
FROM SALES;

--Question 12
SELECT SUM(QUANTITY) AS Total_Quantity
FROM SALES;

--Question 13
SELECT MAX(TOTAL_AMOUNT) AS Max_Total_Amount
FROM SALES;

--Question 14
SELECT MIN(Price_per_unit) AS Min_price_per_unit
FROM SALES;

--Question 15
SELECT Product_Category,
       COUNT(Transaction_ID) AS Transaction_Count
FROM SALES
GROUP BY Product_Category;

--Question 16
SELECT SUM(Total_Amount) AS Total_Revenue,
       GENDER
FROM SALES
GROUP BY GENDER;

--Question 17
SELECT AVG(Price_per_Unit) AS Average_Price,
       PRODUCT_CATEGORY
FROM SALES
GROUP BY PRODUCT_CATEGORY;

--Question 18
SELECT SUM(Total_Amount) AS Total_Revenue,
       Product_Category
FROM SALES
GROUP BY Product_Category
HAVING Total_Revenue >10000;

--Question 19 
SELECT AVG(Quantity) AS Average_quantity,
       Product_Category
FROM SALES
GROUP BY Product_Category
HAVING Average_quantity>2;

--Question 20
SELECT TRANSACTION_ID,
        TOTAL_AMOUNT,
  CASE
      WHEN TOTAL_AMOUNT BETWEEN 0 AND 1000 THEN 'Low'
      ELSE 'High'
      END AS Spending_Level
FROM SALES;

--Question 21
SELECT Customer_ID,
       Age,
    CASE
        WHEN AGE < 30 THEN 'Youth'
        WHEN AGE BETWEEN 30 AND 59 THEN 'Adult'
        ELSE 'Senior'
        END AS Age_Group
FROM SALES;