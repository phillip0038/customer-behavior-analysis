SELECT
  customer_id,
  ROUND(SUM(order_amount), 2) AS total_monetary_value
FROM
  `bigquery-public-data.your_dataset.customer_orders`
GROUP BY
  customer_id
