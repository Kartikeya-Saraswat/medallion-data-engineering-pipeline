SELECT
    c.customer_id,
    c.full_name,
    c.city,
    c.domain,

    COUNT(f.trip_id) AS total_trips,
    SUM(f.fare_amount) AS lifetime_spend,
    AVG(f.fare_amount) AS average_fare,
    SUM(f.distance_km) AS total_distance

FROM {{ ref('FactTrips') }} f
JOIN {{ ref('DimCustomers') }} c
ON f.customer_id = c.customer_id

GROUP BY
    c.customer_id,
    c.full_name,
    c.city,
    c.domain