SELECT
  customer_id,
  COUNT(order_id) AS order_frequency
FROM
  `bigquery-public-data.your_dataset.customer_orders`
GROUP BY
  customer_id
