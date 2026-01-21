--calls
SELECT queue, status, COUNT(*) AS calls
FROM `callcenter_analytics.calls`
GROUP BY queue, status
ORDER BY calls DESC;

--sla
SELECT
  DATE(created_at) AS dt,
  SAFE_DIVIDE(SUM(CASE WHEN handle_time_sec <= 300 THEN 1 ELSE 0 END), COUNT(*)) AS sla_rate
FROM `callcenter_analytics.calls`
GROUP BY dt
ORDER BY dt;

--time per state
SELECT
  state,
  AVG(handle_time_sec) AS avg_ht,
  APPROX_QUANTILES(handle_time_sec, 100)[OFFSET(50)] AS p50,
  APPROX_QUANTILES(handle_time_sec, 100)[OFFSET(90)] AS p90
FROM `callcenter_analytics.calls`
GROUP BY state
ORDER BY avg_ht DESC;

--volume
SELECT state, city, COUNT(*) AS calls
FROM `callcenter_analytics.calls`
GROUP BY state, city
ORDER BY calls DESC;