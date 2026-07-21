SELECT
    v.vehicle_id,
    v.make,
    v.model,
    v.year,
    v.vehicle_type,

    COUNT(f.trip_id) AS total_trips,
    SUM(f.distance_km) AS total_distance,
    SUM(f.fare_amount) AS total_revenue,
    AVG(f.fare_amount) AS average_fare

FROM {{ ref('FactTrips') }} f

JOIN {{ ref('DimVehicles') }} v
ON f.vehicle_id = v.vehicle_id

GROUP BY
    v.vehicle_id,
    v.make,
    v.model,
    v.year,
    v.vehicle_type