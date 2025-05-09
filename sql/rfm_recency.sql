SELECT
  customer_id,
  DATE_DIFF(CURRENT_DATE(), MAX(order_date), DAY) AS recency_days
FROM
  `bigquery-public-data.your_dataset.customer_orders`
GROUP BY
  customer_id
