USE FraudAnalytics;
SELECT COUNT(*) AS Total_Rows
FROM fraud_transaction;
SELECT *
FROM fraud_transaction
LIMIT 10;
SELECT COUNT(*) AS Total_Transactions
FROM fraud_transaction;
SELECT COUNT(*) AS Fraud_Transactions
FROM fraud_transaction
WHERE isFraud = 1;
SELECT
ROUND(
    SUM(isFraud) * 100.0 / COUNT(*),
    2
) AS Fraud_Percentage
FROM fraud_transaction;
SELECT
type,
COUNT(*) AS Total_Transactions
FROM fraud_transaction
GROUP BY type
ORDER BY Total_Transactions DESC;
SELECT
type,
COUNT(*) AS Fraud_Transactions
FROM fraud_transaction
WHERE isFraud = 1
GROUP BY type
ORDER BY Fraud_Transactions Desc;
SELECT
ROUND(AVG(amount),2) AS Average_Amount
FROM fraud_transaction;
SELECT *
FROM fraud_transaction
ORDER BY amount DESC
LIMIT 10;
SELECT *
FROM fraud_transaction
WHERE isFraud = 1
ORDER BY amount DESC
LIMIT 10;
SELECT
type,
COUNT(*) AS Total_Transactions,
SUM(isFraud) AS Fraud_Transactions,
ROUND(SUM(isFraud) * 100.0 / COUNT(*),2) AS Fraud_Rate
FROM fraud_transaction
GROUP BY type
ORDER BY Fraud_Rate DESC;
SELECT
type,
ROUND(AVG(amount),2) AS Average_Amount
FROM fraud_transaction
GROUP BY type
ORDER BY Average_Amount DESC;