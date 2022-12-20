DELETE FROM accelerator;
DELETE FROM project;
DELETE FROM acceleratorproject;
DELETE FROM scientificresearch;
DELETE FROM country;
DELETE FROM city;
DELETE FROM hotel;
DELETE FROM scientist;
DELETE FROM researchscientist;

-- predefined data for table accelerator
insert into accelerator (id,name) values (1,'LHC');
insert into accelerator (id,name) values (2,'LEIR');
insert into accelerator (id,name) values (3,'SPS');
insert into accelerator (id,name) values (4,'PSB');
insert into accelerator (id,name) values (5,'PS');
insert into accelerator (id,name) values (6,'Linac 3');
insert into accelerator (id,name) values (7,'Linac 4');
insert into accelerator (id,name) values (8,'ISOLDE');

-- predefined data for table project
insert into project (id, name) values (1, 'Pandanus Calc. carb.');
insert into project (id, name) values (2, 'LACTULOSE');
insert into project (id, name) values (3, 'Homeopathic Liquid');
insert into project (id, name) values (4, 'Butalbital, Acetaminophen, and Caffeine');
insert into project (id, name) values (5, 'bupropion hydrochloride');
insert into project (id, name) values (6, 'Benzalkonium Chloride');
insert into project (id, name) values (7, 'Coal Tar');
insert into project (id, name) values (8, 'Meloxicam');
insert into project (id, name) values (9, 'Oxygen');
insert into project (id, name) values (10, 'metoprolol tartrate');
insert into project (id, name) values (11, 'Fentanyl Citrate, Bupivacaine HCl');
insert into project (id, name) values (12, 'PHENYTOIN SODIUM');
insert into project (id, name) values (13, 'Acetaminophen');
insert into project (id, name) values (14, 'CAMPHOR (NATURAL), MENTHOL');
insert into project (id, name) values (15, 'Sertraline');
insert into project (id, name) values (16, 'AMIODARONE HYDROCHLORIDE');
insert into project (id, name) values (17, 'Temozolomide');
insert into project (id, name) values (18, 'Acyclovir');
insert into project (id, name) values (19, 'Candesartan cilexetil');
insert into project (id, name) values (20, 'Acetaminophen, Diphenhydramine HCl');
insert into project (id, name) values (21, 'Octinoxate, Avobenzone, and Octisalate');
insert into project (id, name) values (22, 'norgestimate and ethinyl estradiol');
insert into project (id, name) values (23, 'Althaea officinalis, Natrum carbonicum, Rheum officinals, Verbascum thapsus, Zingiber officinale, Aconitum napellus, Drosera rotundifolia, Kali bichromicum, Lobelia inflata, Phosphorus,');
insert into project (id, name) values (24, 'tapentadol hydrochloride');
insert into project (id, name) values (25, 'Hydrocortisone Valerate');
insert into project (id, name) values (26, 'famotidine, calcium carbonate and magnesium hydroxide');
insert into project (id, name) values (27, 'estradiol');
insert into project (id, name) values (28, 'mucor racemosus');
insert into project (id, name) values (29, 'ampicillin sodium and sulbactam sodium');
insert into project (id, name) values (30, 'MUPIROCIN');
insert into project (id, name) values (31, 'EUCALYPTOL, MENTHOL, METHYL SALICYLATE, THYMOL');
insert into project (id, name) values (32, 'idarubicin hydrochloride');
insert into project (id, name) values (33, 'fentanyl');
insert into project (id, name) values (34, 'methotrexate sodium');
insert into project (id, name) values (35, 'Sodium Fluoride');
insert into project (id, name) values (36, 'Ezetimibe');
insert into project (id, name) values (37, 'fexofenadine hydrochloride');
insert into project (id, name) values (38, 'temazepam');
insert into project (id, name) values (39, 'pioglitazone');
insert into project (id, name) values (40, 'Dextromethorphan HBR, Guaifenesin');
insert into project (id, name) values (41, 'Darkleaves Mugwort');
insert into project (id, name) values (42, 'Benzalkonium Chloride');
insert into project (id, name) values (43, 'Egg Plant');
insert into project (id, name) values (44, 'Betula pendula, cortex, Caltha palustris, Galium aparine, Sedum acre, Thuja occidentalis, Urtica urens, Clematis erecta, Hedera helix, Juniperus communis, Ononis spinosa, Quillaja saponaria, Semperviv');
insert into project (id, name) values (45, 'Acetaminophen, guaifenesin, phenylephrine HCl');
insert into project (id, name) values (46, 'Multi Electrolyte Concentrate');
insert into project (id, name) values (47, 'Pyridostigmine Bromide');
insert into project (id, name) values (48, 'Fexofenadine hydrochloride');
insert into project (id, name) values (49, 'OCTINOXATE');
insert into project (id, name) values (50, 'Chloroquine phosphate');

-- bind projects to accelerators
insert into acceleratorproject (acceleratorid, projectid) values (8, 18);
insert into acceleratorproject (acceleratorid, projectid) values (7, 41);
insert into acceleratorproject (acceleratorid, projectid) values (3, 6);
insert into acceleratorproject (acceleratorid, projectid) values (1, 10);
insert into acceleratorproject (acceleratorid, projectid) values (4, 13);
insert into acceleratorproject (acceleratorid, projectid) values (null, 35);
insert into acceleratorproject (acceleratorid, projectid) values (2, 34);
insert into acceleratorproject (acceleratorid, projectid) values (3, 3);
insert into acceleratorproject (acceleratorid, projectid) values (8, 2);
insert into acceleratorproject (acceleratorid, projectid) values (7, 24);
insert into acceleratorproject (acceleratorid, projectid) values (6, 5);
insert into acceleratorproject (acceleratorid, projectid) values (5, 16);
insert into acceleratorproject (acceleratorid, projectid) values (7, 16);
insert into acceleratorproject (acceleratorid, projectid) values (null, 27);
insert into acceleratorproject (acceleratorid, projectid) values (4, 18);
insert into acceleratorproject (acceleratorid, projectid) values (null, 8);
insert into acceleratorproject (acceleratorid, projectid) values (7, 5);
insert into acceleratorproject (acceleratorid, projectid) values (8, 2);
insert into acceleratorproject (acceleratorid, projectid) values (6, 50);
insert into acceleratorproject (acceleratorid, projectid) values (4, 17);
insert into acceleratorproject (acceleratorid, projectid) values (2, 40);
insert into acceleratorproject (acceleratorid, projectid) values (6, 7);
insert into acceleratorproject (acceleratorid, projectid) values (3, 21);
insert into acceleratorproject (acceleratorid, projectid) values (1, 44);
insert into acceleratorproject (acceleratorid, projectid) values (6, 1);
insert into acceleratorproject (acceleratorid, projectid) values (2, 50);
insert into acceleratorproject (acceleratorid, projectid) values (2, 26);
insert into acceleratorproject (acceleratorid, projectid) values (6, 16);
insert into acceleratorproject (acceleratorid, projectid) values (null, 43);
insert into acceleratorproject (acceleratorid, projectid) values (4, 12);
insert into acceleratorproject (acceleratorid, projectid) values (4, 26);
insert into acceleratorproject (acceleratorid, projectid) values (null, 35);
insert into acceleratorproject (acceleratorid, projectid) values (4, 31);
insert into acceleratorproject (acceleratorid, projectid) values (4, 50);
insert into acceleratorproject (acceleratorid, projectid) values (7, 40);
insert into acceleratorproject (acceleratorid, projectid) values (3, 43);
insert into acceleratorproject (acceleratorid, projectid) values (8, 13);
insert into acceleratorproject (acceleratorid, projectid) values (4, 19);
insert into acceleratorproject (acceleratorid, projectid) values (3, 14);
insert into acceleratorproject (acceleratorid, projectid) values (3, 43);
insert into acceleratorproject (acceleratorid, projectid) values (8, 38);
insert into acceleratorproject (acceleratorid, projectid) values (2, 25);
insert into acceleratorproject (acceleratorid, projectid) values (6, 8);
insert into acceleratorproject (acceleratorid, projectid) values (8, 9);
insert into acceleratorproject (acceleratorid, projectid) values (7, 2);
insert into acceleratorproject (acceleratorid, projectid) values (null, 21);
insert into acceleratorproject (acceleratorid, projectid) values (4, 9);
insert into acceleratorproject (acceleratorid, projectid) values (6, 6);
insert into acceleratorproject (acceleratorid, projectid) values (5, 46);
insert into acceleratorproject (acceleratorid, projectid) values (null, 9);

-- predefined data for table scientificresearch
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (1, 1, 'Canis aureus', 821, '1991-10-10T23:42:51Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (2, 38, 'Leprocaulinus vipera', 239, '2004-06-02T03:25:18Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (3, 7, 'Mycteria leucocephala', 80, '2001-01-14T19:36:51Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (4, 33, 'Paraxerus cepapi', 1442, '2017-08-08T21:20:45Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (5, 26, 'Gopherus agassizii', 299, '2003-06-13T02:27:27Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (6, 47, 'Coendou prehensilis', 364, '2013-09-11T17:24:30Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (7, 48, 'Geochelone radiata', 700, '2022-01-18T02:36:12Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (8, 30, 'Tachyglossus aculeatus', 878, '1991-09-17T12:36:31Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (9, 9, 'Equus burchelli', 512, '2004-08-17T09:27:29Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (10, 21, 'Felis concolor', 99, '2014-05-04T16:38:02Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (11, 1, 'Psophia viridis', 949, '1998-12-14T17:08:53Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (12, 17, 'Rangifer tarandus', 1298, '1995-05-19T17:38:05Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (13, 15, 'Cordylus giganteus', 1435, '2019-07-16T22:05:15Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (14, 20, 'Taurotagus oryx', 708, '2006-02-25T14:08:42Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (15, 26, 'Climacteris melanura', 346, '2010-07-05T07:01:04Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (16, 6, 'Lamprotornis chalybaeus', 4, '2018-10-28T07:23:31Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (17, 44, 'Eumetopias jubatus', 1876, '1999-06-12T06:41:48Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (18, 9, 'Uraeginthus angolensis', 674, '1995-04-18T19:22:49Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (19, 34, 'Cordylus giganteus', 1731, '2005-09-28T10:20:35Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (20, 49, 'Sarkidornis melanotos', 1752, '2021-02-23T04:20:08Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (21, 43, 'Corythornis cristata', 193, '2012-07-16T18:21:01Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (22, 41, 'Gabianus pacificus', 1050, '2008-07-05T22:14:55Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (23, 27, 'unavailable', 468, '2005-08-13T23:09:20Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (24, 38, 'Galictis vittata', 414, '1992-04-09T13:46:42Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (25, 14, 'Spheniscus mendiculus', 566, '1997-02-12T20:34:48Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (26, 35, 'Canis lupus baileyi', 1107, '2010-06-10T07:44:42Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (27, 15, 'Myotis lucifugus', 256, '2017-01-14T10:17:49Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (28, 11, 'Agkistrodon piscivorus', 117, '2017-05-28T01:46:08Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (29, 22, 'Felis concolor', 604, '1998-12-30T16:45:36Z');
insert into scientificresearch (id, projectid, name, numofquotes, publishedat) values (30, 38, 'Pytilia melba', 489, '2012-06-25T07:58:10Z');

-- predefined data for table country
insert into country (id, name, population, incomepercapita) values (1, 'Switzerland', 8636896, 84658);
insert into country (id, name, population, incomepercapita) values (2, 'France', 67897000, 56036);
insert into country (id, name, population, incomepercapita) values (3, 'Germany', 83695430, 63835);

-- predefined data for table city
insert into city (id, name, countryid) values (1, 'Zürich', 1);
insert into city (id, name, countryid) values (2, 'Bern', 1);
insert into city (id, name, countryid) values (3, 'Geneva', 1);
insert into city (id, name, countryid) values (4, 'Lyon', 2);
insert into city (id, name, countryid) values (5, 'Munich', 3);

-- predefined data for table hotel
insert into hotel (id, name, cityid, capacity) values (1, 'Dale hotel', 1, 107);
insert into hotel (id, name, cityid, capacity) values (2, 'Lattka hotel', 3, 90);
insert into hotel (id, name, cityid, capacity) values (3, 'Pallatina hotel', 2, 493);
insert into hotel (id, name, cityid, capacity) values (4, 'Gronno hotel', 1, 60);
insert into hotel (id, name, cityid, capacity) values (5, 'Bagott hotel', 3, 451);

-- predefined data for table scientist
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (1, 'Tán', 'Eddow', '1979-07-12', 1, 'not known', 'physicist', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (2, 'Maïlys', 'Primmer', '1958-01-24', 2, 'not applicable', 'programmer', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (3, 'Valérie', 'Syratt', '1963-05-11', 1, 'not applicable', 'material scientist', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (4, 'Néhémie', 'Tondeur', '1968-12-19', 3, 'not known', 'programmer', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (5, 'Marie-thérèse', 'Nourse', '1965-09-29', 3, 'female', 'material scientist', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (6, 'Gwenaëlle', 'Greenhill', '1984-06-28', 1, 'not known', 'programmer', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (7, 'Liè', 'Sephton', '1977-10-04', 3, 'not known', 'material scientist', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (8, 'Zhì', 'Bulcroft', '1967-05-03', 1, 'not known', 'material scientist', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (9, 'Maïlis', 'Calkin', '1951-05-21', 2, 'male', 'programmer', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (10, 'Lèi', 'Seligson', '1964-05-03', 1, 'male', 'programmer', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (11, 'Ruò', 'Jardin', '1952-02-18', 2, 'male', 'material scientist', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (12, 'Audréanne', 'Pavia', '1983-01-11', 3, 'male', 'physicist', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (13, 'Maïlys', 'Stalley', '1971-07-20', 1, 'male', 'programmer', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (14, 'Audréanne', 'Linneman', '1951-06-06', 3, 'not applicable', 'material scientist', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (15, 'Ruì', 'Baggalley', '1961-11-25', 1, 'female', 'material scientist', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (16, 'Anaëlle', 'Davers', '1984-10-12', 2, 'not applicable', 'material scientist', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (17, 'Pélagie', 'Salasar', '1965-05-12', 1, 'female', 'engineer', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (18, 'Magdalène', 'Winterflood', '1953-12-05', 3, 'male', 'programmer', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (19, 'Faîtes', 'Lakeland', '1956-08-16', 3, 'not applicable', 'engineer', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (20, 'Lài', 'Belhomme', '1970-04-22', 3, 'not applicable', 'material scientist', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (21, 'Dà', 'Demangeon', '1962-04-20', 2, 'not applicable', 'programmer', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (22, 'Fèi', 'Mapham', '1984-06-10', 3, 'not known', 'physicist', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (23, 'Lorène', 'Brookton', '1972-02-24', 3, 'not known', 'engineer', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (24, 'Dà', 'Abbatt', '1979-05-22', 2, 'female', 'material scientist', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (25, 'Maïlis', 'Desantis', '1953-02-06', 1, 'female', 'programmer', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (26, 'Mélys', 'McRory', '1954-03-10', 2, 'not applicable', 'engineer', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (27, 'Eliès', 'Szimon', '1962-09-13', 3, 'not known', 'physicist', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (28, 'Mélodie', 'Willshire', '1975-08-25', 1, 'not applicable', 'material scientist', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (29, 'Dù', 'Lebbon', '1982-05-27', 1, 'not applicable', 'engineer', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (30, 'Garçon', 'O'' Markey', '1979-04-14', 3, 'not applicable', 'material scientist', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (31, 'Josée', 'De Hooge', '1952-08-24', 2, 'not applicable', 'material scientist', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (32, 'Dà', 'Traise', '1984-02-24', 3, 'not known', 'material scientist', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (33, 'Kù', 'Fletcher', '1970-05-17', 1, 'not applicable', 'engineer', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (34, 'Maïlis', 'Limbrick', '1955-10-11', 3, 'female', 'material scientist', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (35, 'Marie-ève', 'Yukhov', '1969-07-22', 3, 'not known', 'programmer', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (36, 'Océane', 'Arrighini', '1982-03-26', 1, 'male', 'engineer', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (37, 'Lài', 'Fraulo', '1958-01-09', 1, 'male', 'engineer', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (38, 'Marlène', 'Pagan', '1973-02-05', 3, 'not known', 'programmer', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (39, 'Naéva', 'Stonnell', '1958-03-13', 3, 'not known', 'material scientist', 3);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (40, 'Kévina', 'Greenlees', '1974-01-02', 3, 'male', 'physicist', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (41, 'Björn', 'Stopps', '1970-08-09', 3, 'not applicable', 'programmer', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (42, 'Géraldine', 'Weekly', '1959-01-21', 3, 'male', 'programmer', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (43, 'Stéphanie', 'Peckitt', '1964-01-21', 2, 'not known', 'material scientist', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (44, 'Clélia', 'Mallatratt', '1955-05-07', 3, 'not applicable', 'material scientist', 2);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (45, 'Maëlyss', 'Lepard', '1972-02-17', 1, 'not applicable', 'physicist', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (46, 'Stéphanie', 'Trighton', '1981-01-26', 2, 'male', 'material scientist', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (47, 'Uò', 'Hing', '1956-06-02', 3, 'female', 'engineer', 1);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (48, 'Maïwenn', 'Barfitt', '1967-08-10', 3, 'male', 'engineer', 4);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (49, 'Kévina', 'Yankov', '1959-05-17', 2, 'not known', 'physicist', 5);
insert into scientist (id, firstname, lastname, dateofbirth, countryid, gender, field, hotelid) values (50, 'Anaïs', 'Sancraft', '1965-03-19', 3, 'not known', 'programmer', 1);

-- predefined data for table researchscientist
insert into researchscientist (scientificresearchid, scientistid) values (4, 18);
insert into researchscientist (scientificresearchid, scientistid) values (6, 29);
insert into researchscientist (scientificresearchid, scientistid) values (20, 16);
insert into researchscientist (scientificresearchid, scientistid) values (1, 49);
insert into researchscientist (scientificresearchid, scientistid) values (13, 29);
insert into researchscientist (scientificresearchid, scientistid) values (21, 48);
insert into researchscientist (scientificresearchid, scientistid) values (14, 38);
insert into researchscientist (scientificresearchid, scientistid) values (9, 9);
insert into researchscientist (scientificresearchid, scientistid) values (29, 45);
insert into researchscientist (scientificresearchid, scientistid) values (3, 25);
insert into researchscientist (scientificresearchid, scientistid) values (7, 25);
insert into researchscientist (scientificresearchid, scientistid) values (15, 26);
insert into researchscientist (scientificresearchid, scientistid) values (29, 27);
insert into researchscientist (scientificresearchid, scientistid) values (18, 16);
insert into researchscientist (scientificresearchid, scientistid) values (27, 25);
insert into researchscientist (scientificresearchid, scientistid) values (26, 14);
insert into researchscientist (scientificresearchid, scientistid) values (8, 2);
insert into researchscientist (scientificresearchid, scientistid) values (27, 49);
insert into researchscientist (scientificresearchid, scientistid) values (17, 22);
insert into researchscientist (scientificresearchid, scientistid) values (17, 38);
insert into researchscientist (scientificresearchid, scientistid) values (21, 32);
insert into researchscientist (scientificresearchid, scientistid) values (13, 49);
insert into researchscientist (scientificresearchid, scientistid) values (16, 14);
insert into researchscientist (scientificresearchid, scientistid) values (25, 10);
insert into researchscientist (scientificresearchid, scientistid) values (14, 19);
insert into researchscientist (scientificresearchid, scientistid) values (27, 40);
insert into researchscientist (scientificresearchid, scientistid) values (16, 49);
insert into researchscientist (scientificresearchid, scientistid) values (7, 26);
insert into researchscientist (scientificresearchid, scientistid) values (3, 36);
insert into researchscientist (scientificresearchid, scientistid) values (14, 41);
insert into researchscientist (scientificresearchid, scientistid) values (19, 32);
insert into researchscientist (scientificresearchid, scientistid) values (16, 50);
insert into researchscientist (scientificresearchid, scientistid) values (9, 26);
insert into researchscientist (scientificresearchid, scientistid) values (17, 21);
insert into researchscientist (scientificresearchid, scientistid) values (19, 26);
insert into researchscientist (scientificresearchid, scientistid) values (2, 4);
insert into researchscientist (scientificresearchid, scientistid) values (11, 46);
insert into researchscientist (scientificresearchid, scientistid) values (28, 9);
insert into researchscientist (scientificresearchid, scientistid) values (6, 5);
insert into researchscientist (scientificresearchid, scientistid) values (13, 3);
insert into researchscientist (scientificresearchid, scientistid) values (11, 2);
insert into researchscientist (scientificresearchid, scientistid) values (4, 36);
insert into researchscientist (scientificresearchid, scientistid) values (14, 48);
insert into researchscientist (scientificresearchid, scientistid) values (22, 24);
insert into researchscientist (scientificresearchid, scientistid) values (3, 22);
insert into researchscientist (scientificresearchid, scientistid) values (26, 12);
insert into researchscientist (scientificresearchid, scientistid) values (29, 13);
insert into researchscientist (scientificresearchid, scientistid) values (11, 11);
insert into researchscientist (scientificresearchid, scientistid) values (5, 41);
insert into researchscientist (scientificresearchid, scientistid) values (15, 12);