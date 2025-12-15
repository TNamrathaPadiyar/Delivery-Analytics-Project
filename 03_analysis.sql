SELECT courier, AVG(delay_days) AS avg_delay
FROM deliveries GROUP BY courier ORDER BY avg_delay DESC;

SELECT city, AVG(delay_days) AS avg_delay
FROM deliveries GROUP BY city ORDER BY avg_delay DESC;

SELECT category, AVG(delay_days) AS avg_delay
FROM deliveries GROUP BY category ORDER BY avg_delay DESC;

SELECT zone, AVG(delay_days) AS avg_delay
FROM deliveries GROUP BY zone ORDER BY avg_delay DESC;

SELECT DATE_FORMAT(order_date,'%Y-%m') AS month, AVG(delay_days) AS avg_delay
FROM deliveries WHERE order_date IS NOT NULL
GROUP BY month ORDER BY month;
