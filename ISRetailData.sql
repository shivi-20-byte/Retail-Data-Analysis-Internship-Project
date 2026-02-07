CREATE DATABASE RetailSalesData;

USE RetailSalesData;

CREATE TABLE Sales_Data_Transactions(
customer_id VARCHAR(255),
trans_date VARCHAR(50),
tran_amount INT
);

CREATE TABLE Sales_Data_Response(
customer_id VARCHAR(255) PRIMARY KEY,
response INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
INTO TABLE Sales_Data_Response
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW VARIABLES LIKE 'secure_file_priv';

SELECT * FROM Sales_Data_Transactions LIMIT 10;

EXPLAIN SELECT * FROM Sales_Data_Transactions
WHERE customer_id = 'CS1217';

CREATE INDEX idx_id ON Sales_Data_Transactions(CUSTOMER_ID);

EXPLAIN SELECT * FROM Sales_Data_Transactions
WHERE customer_id = 'CS1217';
