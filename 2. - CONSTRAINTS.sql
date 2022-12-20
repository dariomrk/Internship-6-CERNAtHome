-- function that checks whether a given hotel has free space
-- DOES NOT WORK -> RETURNS MULTIPLE ROWS IN SOME CASES
-- FIX? -> LIMIT 1
-- CREATE FUNCTION checkhotelfreespace(hotelid INT) RETURNS BOOLEAN
--     LANGUAGE SQL
--     IMMUTABLE
--     RETURN (SELECT (COUNT(s.id) < h.capacity) as hasfreespace FROM hotel h
--         JOIN scientist s ON s.hotelid = h.id
--         WHERE s.hotelid = h.id AND h.id = hotelid
--         GROUP BY h.id);

-- ALTER TABLE scientist
-- ADD CONSTRAINT canstayathotel CHECK (checkhotelfreespace(hotelid));

ALTER TABLE country
ADD CONSTRAINT uniquecountryname UNIQUE (name);
