CREATE DATABASE delivery_analytics_project;
USE delivery_analytics_project;

CREATE TABLE deliveries (
    order_id VARCHAR(20),
    courier VARCHAR(50),
    order_date DATE,
    promised_date DATE,
    delivered_date DATE,
    delay_days INT,
    city VARCHAR(50),
    zone VARCHAR(20),
    category VARCHAR(50),
    weight_kg DECIMAL(5,2)
);

LOAD DATA INFILE 'C:/wamp64/www/delivery_analytics_project/data/delivery_dataset.csv'
INTO TABLE deliveries
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
