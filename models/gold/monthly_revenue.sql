SELECT
    DATE_TRUNC('month', trip_start_time) AS month,
    COUNT(*) AS total_trips,
    SUM(fare_amount) AS revenue,
    AVG(fare_amount) AS average_fare

FROM {{ ref('FactTrips') }}

GROUP BY DATE_TRUNC('month', trip_start_time)

ORDER BY month