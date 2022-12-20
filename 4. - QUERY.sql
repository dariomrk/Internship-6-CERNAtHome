-- 1. select every scientific research with all of the scientists that have worked on it.
-- The names must be in the following format: n. lastname,... .
SELECT sr.name, STRING_AGG(CONCAT(SUBSTRING(sci.firstname,1,1),'. ',sci.lastname), ', ') FROM scientificresearch sr
JOIN researchscientist rssci ON sr.id = rssci.scientificresearchid
JOIN scientist sci ON sci.id = rssci.scientistid
GROUP BY sr.id;

-- 2. select every scientist. Output first and last name, gender, country and the income per capita of country.
SELECT sci.firstname, sci.lastname, sci.gender, c.name, CONCAT(c.incomepercapita, ' $/capita') FROM scientist sci
JOIN country c ON sci.countryid = c.id;

-- 3. select every combination of project and accelerator. In the case a project is not tied to an accelerator
-- still output the project name with accelerator: none.
SELECT p.name as project, COALESCE(a.name, 'None') as accelerator FROM accelerator a
FULL OUTER JOIN acceleratorproject ap ON a.id = ap.acceleratorid
FULL OUTER JOIN project p ON p.id = ap.projectid;

-- 4. select all projects where a tied research was published between 2015 and 2017
SELECT p.name as project, sr.publishedat FROM project p
JOIN scientificresearch sr ON p.id = sr.projectid
WHERE DATE_PART('year',sr.publishedat) <= 2017 and DATE_PART('year',sr.publishedat) >= 2015;

-- 5.
-- select number of works from a given country.
SELECT c.name, COUNT(sr.id) as numberofpapers
FROM country c
JOIN scientist s ON s.countryid = c.id
JOIN researchscientist rs ON rs.scientistid = s.id
JOIN scientificresearch sr ON sr.id = rs.scientificresearchid
GROUP BY c.id;

-- select the number of quotes of the most popular work from a given country
SELECT c.name, MAX(sr.numofquotes) as mostquoted FROM country c
JOIN scientist s ON s.countryid = c.id
JOIN researchscientist rs ON rs.scientistid = s.id
JOIN scientificresearch sr ON sr.id = rs.scientificresearchid
GROUP BY c.id;

-- 6.
-- select first work of each country
SELECT c.name, MIN(sr.publishedat) as oldest FROM country c
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
SELECT a.name, ROUND(AVG(sr.numofquotes),2) as average FROM accelerator a
JOIN acceleratorproject ap ON a.id = ap.acceleratorid
JOIN project p ON ap.projectid = p.id
JOIN scientificresearch sr ON p.id = sr.projectid
GROUP BY a.id
ORDER BY average DESC;