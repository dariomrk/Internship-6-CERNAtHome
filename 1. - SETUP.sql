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
    projectid INT REFERENCES project(id) NOT NULL ON DELETE CASCADE
);

CREATE TABLE scientificresearch(
    id SERIAL PRIMARY KEY,
    projectid INT REFERENCES project(id) ON DELETE CASCADE,
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
    countryid INT REFERENCES country(id) NOT NULL ON DELETE CASCADE
);

CREATE TABLE hotel(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    cityid INT REFERENCES city(id) NOT NULL ON DELETE CASCADE,
    capacity INT NOT NULL CHECK (capacity > 0)
);

CREATE TABLE scientist(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    dateofbirth DATE NOT NULL,
    countryid INT REFERENCES country(id) NOT NULL ON DELETE CASCADE,
    gender GENDER NOT NULL,
    field FIELD NOT NULL,
    hotelid INT REFERENCES hotel(id) NOT NULL ON DELETE CASCADE
);

CREATE TABLE researchscientist(
    scientificresearchid INT REFERENCES scientificresearch(id) NOT NULL ON DELETE CASCADE,
    scientistid INT REFERENCES scientist(id) NOT NULL ON DELETE CASCADE,
    PRIMARY KEY(scientificresearchid, scientistid)
);
