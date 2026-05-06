SELECT COUNT(*) AS TOTAL_RECORDS
FROM NETFLIX_TITLES;

SELECT TYPE , COUNT(*) AS TOTAL
FROM NETFLIX_TITLES
GROUP BY TYPE;

SELECT country, COUNT(*) AS total_content
FROM netflix_titles
WHERE country IS NOT NULL 
AND country != ''
GROUP BY country
ORDER BY total_content DESC
LIMIT 10; 

SELECT rating, COUNT(*) AS total
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total DESC;

SELECT release_year, COUNT(*) AS total_content
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC;

SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
ORDER BY CAST(REPLACE(duration, ' min', '') AS UNSIGNED) DESC
LIMIT 10;

SELECT title, duration
FROM netflix_titles
WHERE type = 'TV Show'
ORDER BY CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC
LIMIT 10;