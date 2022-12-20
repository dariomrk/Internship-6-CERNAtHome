-- select every scientific research with all of the scientists that have worked on it.
-- The names must be in the following format: n. lastname,... .

SELECT sr.name, STRING_AGG(CONCAT(SUBSTRING(sci.firstname,1,1),'. ',sci.lastname), ', ') FROM scientificresearch sr
JOIN researchscientist rssci ON sr.id = rssci.scientificresearchid
JOIN scientist sci ON sci.id = rssci.scientistid
GROUP BY sr.id;

-- select every scientist. Output first and last name, gender, country and the income per capita of country.
SELECT sci.firstname, sci.lastname, sci.gender, c.name, CONCAT(c.incomepercapita, ' $/capita') FROM scientist sci
JOIN country c ON sci.countryid = c.id;

-- select every combination of project and accelerator. In the case a project is not tied to an accelerator
-- still output the project name with accelerator: none.

SELECT p.name as project, COALESCE(a.name, 'None') as accelerator FROM accelerator a
FULL OUTER JOIN acceleratorproject ap ON a.id = ap.acceleratorid
FULL OUTER JOIN project p ON p.id = ap.projectid;
