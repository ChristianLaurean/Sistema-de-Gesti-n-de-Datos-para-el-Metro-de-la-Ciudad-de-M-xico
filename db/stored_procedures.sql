CREATE OR REPLACE FUNCTION calculate_distances(
    station_one VARCHAR(50),
    station_two VARCHAR(50),
    meters BOOLEAN)
RETURNS DECIMAL AS
$$
DECLARE 
    distance DECIMAL(10 , 2);
BEGIN
    SELECT ST_DistanceSphere(
        (SELECT l.location
        FROM locations AS l
        INNER JOIN stations AS s ON s.id = l.station_id
        WHERE s.name = station_one),
        (SELECT l.location
        FROM locations AS l
        INNER JOIN stations AS s ON s.id = l.station_id
        WHERE s.name = station_two)
    ) INTO distance;

    IF meters THEN
        RETURN distance;
    ELSE
        distance := distance / 1000;
        RETURN distance;
    END IF;
END;
$$
LANGUAGE plpgsql;
