SELECT c.customer_name,
       SUM(s.price_per_month * s.subscription_length) AS total_amount_due
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN subscriptions s ON o.subscription_id = s.subscription_id
WHERE o.order_status = 'unpaid'
AND s.description = 'Fashion Magazine'
GROUP BY c.customer_name;
