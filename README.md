# Internship-6-CERNAtHome

Sixth assignment during the DUMP Internship. Still practicing SQL.

## Notes:
- When restoring `DATABASE.backup` with Postgres an error will appear regarding a missing function definition for a constraint in the table `scientist`, however the database is functional.  
To restore the function run this query:
```
CREATE FUNCTION checkhotelfreespace(hotelid INT) RETURNS BOOLEAN
LANGUAGE SQL
IMMUTABLE
RETURN (SELECT (COUNT(s.id) < h.capacity) as hasfreespace FROM hotel h
    JOIN scientist s ON s.hotelid = h.id
    WHERE s.hotelid = h.id AND h.id = hotelid
    GROUP BY h.id
    LIMIT 1);
```