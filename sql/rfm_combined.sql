WITH recency AS (
  SELECT
    customer_id,
    DATE_DIFF(CURRENT_DATE(), MAX(order_date), DAY) AS recency_days
  FROM
    `bigquery-public-data.your_dataset.customer_orders`
  GROUP BY
    customer_id
),
frequency AS (
  SELECT
    customer_id,
    COUNT(order_id) AS order_frequency
  FROM
    `bigquery-public-data.your_dataset.customer_orders`
  GROUP BY
    customer_id
),
monetary AS (
  SELECT
    customer_id,
    ROUND(SUM(order_amount), 2) AS total_monetary_value
  FROM
    `bigquery-public-data.your_dataset.customer_orders`
  GROUP BY
    customer_id
)

SELECT
  r.customer_id,
  r.recency_days,
  f.order_frequency,
  m.total_monetary_value
FROM
  recency r
JOIN
  frequency f ON r.customer_id = f.customer_id
JOIN
  monetary m ON r.customer_id = m.customer_id
