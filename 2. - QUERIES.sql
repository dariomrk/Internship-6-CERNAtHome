-- 1. select every scientific research with all of the scientists that have worked on it.
-- the names must be in the following format: n. lastname,... .
SELECT sr.name, STRING_AGG(CONCAT(sci.lastname,' ', SUBSTRING(sci.firstname,1,1), '.'),', ') as scientists FROM scientificresearch sr
JOIN researchscientist rssci ON sr.id = rssci.scientificresearchid
JOIN scientist sci ON sci.id = rssci.scientistid
GROUP BY sr.id;

-- 2. select every scientist. Output first and last name, gender, country and the income per capita of country.
SELECT sci.firstname, sci.lastname, sci.gender, c.name, CONCAT(c.incomepercapita, ' $/capita') as ppp FROM scientist sci
JOIN country c ON sci.countryid = c.id;

-- 3. select every combination of project and accelerator. in the case a project is not tied to an accelerator
-- still output the project name with accelerator: none.
SELECT p.name as project, COALESCE(a.name, 'None') as accelerator FROM accelerator a
FULL OUTER JOIN acceleratorproject ap ON a.id = ap.acceleratorid
FULL OUTER JOIN project p ON p.id = ap.projectid;

-- 4. select all projects where a tied research was published between 2015 and 2017
SELECT p.name as project, sr.publishedat FROM project p
JOIN scientificresearch sr ON p.id = sr.projectid
WHERE DATE_PART('year',sr.publishedat) <= 2017 and DATE_PART('year',sr.publishedat) >= 2015;

-- 5. select number of works from a given country, max number of quotes for a work from a given country and the name of the work.
SELECT c.name, COUNT(sr.id), MAX(sr.numofquotes), (
    SELECT subsr.name FROM scientificresearch subsr
    WHERE subsr.numofquotes = MAX(sr.numofquotes)
) FROM country c
JOIN scientist s ON c.id = s.countryid
JOIN researchscientist rs ON rs.scientistid = s.id
JOIN scientificresearch sr ON sr.id = rs.scientificresearchid
GROUP BY c.name;

-- 6. select first work of each country
SELECT c.name, MIN(sr.publishedat) as oldest, (
    SELECT subsr.name FROM scientificresearch subsr
    WHERE subsr.publishedat = MIN(sr.publishedat)
) FROM country c
JOIN scientist s ON s.countryid = c.id
JOIN researchscientist rs ON rs.scientistid = s.id
JOIN scientificresearch sr ON sr.id = rs.scientificresearchid
GROUP BY c.id;

-- 7. select all cities and the count of the scientists who are currently located there.
SELECT c.name, count(s.id) as numberofscientists FROM city c
JOIN hotel h ON c.id = h.cityid
JOIN scientist s ON h.id = s.hotelid
GROUP BY c.id
ORDER BY count(s.id) DESC;

-- 8. average number of quotes per accelerator
SELECT a.name, ROUND(AVG(sr.numofquotes),2) as averagenumberofquotes FROM accelerator a
JOIN acceleratorproject ap ON a.id = ap.acceleratorid
JOIN project p ON ap.projectid = p.id
JOIN scientificresearch sr ON p.id = sr.projectid
GROUP BY a.id
ORDER BY averagenumberofquotes DESC;

-- 9. select scientists by field, decade of birth and gender.
-- in the case that the number of scientists is less than 20 per category, do not show it.
-- order by decade of birth.
SELECT COUNT(s.id),s.field, CAST(DATE_PART('decade', (s.dateofbirth)) AS INT) as decade, s.gender FROM scientist s
GROUP BY s.field,decade,s.gender
HAVING COUNT(s.id) > 20 -- nothing matches condition when > 3 (more entries required)
ORDER BY decade DESC;

-- 10.
-- select the 10 most wealthy scientists using the given formula.
SELECT CONCAT(s.firstname, ' ', s.lastname) as scientist, (SQRT(sr.numofquotes) / COUNT(rs.scientificresearchid)) as earnings FROM scientist s
JOIN researchscientist rs ON s.id = rs.scientistid
JOIN scientificresearch sr ON rs.scientificresearchid = sr.id
GROUP BY s.id, sr.id
ORDER BY earnings DESC
LIMIT 10;
