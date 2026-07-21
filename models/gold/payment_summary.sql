SELECT
    p.payment_method,
    p.payment_status,

    COUNT(*) AS total_transactions,
    SUM(f.fare_amount) AS revenue,
    AVG(f.fare_amount) AS average_fare

FROM {{ ref('FactTrips') }} f
JOIN {{ ref('DimPayments') }} p
ON f.trip_id = p.trip_id

GROUP BY
    p.payment_method,
    p.payment_status