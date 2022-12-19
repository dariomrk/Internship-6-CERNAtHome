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
    acceleratorid INT REFERENCES accelerator(id),
    projectid INT REFERENCES project(id) NOT NULL
);

CREATE TABLE scientificresearch(
    id SERIAL PRIMARY KEY,
    projectid INT REFERENCES project(id),
    name VARCHAR(60) NOT NULL,
    numofquotes INT DEFAULT 0
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
    countryid INT REFERENCES country(id) NOT NULL
);

CREATE TABLE hotel(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    cityid INT REFERENCES city(id) NOT NULL,
    capacity INT NOT NULL CHECK (capacity > 0)
);

CREATE TABLE scientist(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    dateofbirth DATE NOT NULL,
    countryid INT REFERENCES country(id) NOT NULL,
    gender GENDER NOT NULL,
    field FIELD NOT NULL,
    hotelid INT REFERENCES hotel(id) NOT NULL CHECK(
        (SELECT (COUNT(s.id) < h.capacity) as hasfreespace FROM hotel h
        JOIN scientist s ON s.hotelid = h.id
        WHERE s.hotelid = h.id AND h.id = hotelid
        GROUP BY h.id).hasfreespace
    )
);

CREATE TABLE researchscientist(
    scientificresearchid INT REFERENCES scientificresearch(id) NOT NULL,
    scientistid INT REFERENCES scientist(id) NOT NULL,
    PRIMARY KEY(scientificresearchid, scientistid)
);