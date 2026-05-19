CREATE OR REPLACE VIEW vw_segment_distribution AS
SELECT segment, COUNT(customer_id) AS total_customers,
    ROUND(AVG(recency)::numeric, 1) AS avg_recency,
    ROUND(AVG(frequency)::numeric, 1) AS avg_frequency,
    ROUND(AVG(monetary)::numeric, 2) AS avg_monetary
FROM customer_rfm
GROUP BY segment ORDER BY total_customers DESC;

CREATE OR REPLACE VIEW vw_churn_summary AS
SELECT churn, COUNT(customer_id) AS total_customers,
    ROUND(AVG(monetary)::numeric, 2) AS avg_spend,
    ROUND(AVG(recency)::numeric, 1) AS avg_recency
FROM customer_rfm GROUP BY churn;

CREATE OR REPLACE VIEW vw_monthly_trend AS
SELECT DATE_TRUNC('month', invoicedate::timestamp) AS month,
    COUNT(DISTINCT customer_id) AS active_customers,
    ROUND(SUM(totalprice)::numeric, 2) AS monthly_revenue
FROM retail_transactions
GROUP BY month ORDER BY month;

CREATE OR REPLACE VIEW vw_top_countries AS
SELECT country, COUNT(DISTINCT customer_id) AS customers,
    ROUND(SUM(totalprice)::numeric, 2) AS total_revenue
FROM retail_transactions
GROUP BY country ORDER BY total_revenue DESC LIMIT 10;

CREATE OR REPLACE VIEW vw_high_risk_customers AS
SELECT customer_id, recency, frequency,
    ROUND(monetary::numeric, 2) AS monetary,
    segment,
    ROUND(churn_probability::numeric, 2) AS churn_probability
FROM customer_rfm
WHERE segment IN ('At Risk', 'Cant Lose Them')
ORDER BY monetary DESC;

SELECT churn, COUNT(customer_id) AS total_customers,
    ROUND(AVG(monetary)::numeric, 2) AS avg_spend,
    ROUND(AVG(recency)::numeric, 1) AS avg_recency
FROM customer_rfm GROUP BY churn;