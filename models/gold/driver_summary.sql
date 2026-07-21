SELECT
    d.driver_id,
    d.full_name,
    d.city,
    d.driver_rating,

    COUNT(f.trip_id) AS total_trips,
    SUM(f.fare_amount) AS total_revenue,
    AVG(f.fare_amount) AS average_fare,
    SUM(f.distance_km) AS total_distance

FROM {{ ref('FactTrips') }} f
JOIN {{ ref('DimDrivers') }} d
ON f.driver_id = d.driver_id

GROUP BY
    d.driver_id,
    d.full_name,
    d.city,
    d.driver_rating