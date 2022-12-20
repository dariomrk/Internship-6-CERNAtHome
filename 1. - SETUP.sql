-- create enums
CREATE TYPE gender AS ENUM ('not known', 'male', 'female', 'not applicable');
CREATE TYPE field AS ENUM ('programmer', 'physicist', 'engineer', 'material scientist');

-- create tables
CREATE TABLE accelerator(
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE project(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE acceleratorproject(
    id SERIAL PRIMARY KEY,
    acceleratorid INT REFERENCES accelerator(id) ON DELETE CASCADE,
    projectid INT NOT NULl REFERENCES project(id) ON DELETE CASCADE
);

CREATE TABLE scientificresearch(
    id SERIAL PRIMARY KEY,
    projectid INT NOT NULL REFERENCES project(id) ON DELETE CASCADE,
    name VARCHAR(60) NOT NULL,
    numofquotes INT DEFAULT 0,
    publishedat TIMESTAMP DEFAULT now()
);

CREATE TABLE country(
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    population INT NOT NULL,
    incomepercapita DECIMAL NOT NULL
);

CREATE TABLE city(
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    countryid INT NOT NULL REFERENCES country(id) ON DELETE CASCADE
);

CREATE TABLE hotel(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    cityid INT NOT NULL REFERENCES city(id) ON DELETE CASCADE,
    capacity INT NOT NULL CHECK (capacity > 0)
);

CREATE TABLE scientist(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    dateofbirth DATE NOT NULL,
    countryid INT NOT NULL REFERENCES country(id) ON DELETE CASCADE,
    gender GENDER NOT NULL,
    field FIELD NOT NULL,
    hotelid INT NOT NULL REFERENCES hotel(id) ON DELETE CASCADE
);

CREATE TABLE researchscientist(
    scientificresearchid INT NOT NULL REFERENCES scientificresearch(id) ON DELETE CASCADE,
    scientistid INT NOT NULL REFERENCES scientist(id) ON DELETE CASCADE,
    PRIMARY KEY(scientificresearchid, scientistid)
);

-- add constraints
CREATE FUNCTION checkhotelfreespace(hotelid INT) RETURNS BOOLEAN
    LANGUAGE SQL
    IMMUTABLE
    RETURN (SELECT (COUNT(s.id) < h.capacity) as hasfreespace FROM hotel h
        JOIN scientist s ON s.hotelid = h.id
        WHERE s.hotelid = h.id AND h.id = hotelid
        GROUP BY h.id
        LIMIT 1);

ALTER TABLE scientist
ADD CONSTRAINT canstayathotel CHECK (checkhotelfreespace(hotelid));

ALTER TABLE country
ADD CONSTRAINT uniquecountryname UNIQUE (name);
