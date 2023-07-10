# Task 1
SELECT *
FROM staff
ORDER BY sallary DESC;

SELECT *
FROM staff
ORDER BY sallary;

# Task 3

SELECT *
FROM staff
ORDER BY sallary DESC
LIMIT 5;

# Task 3

SELECT *
FROM staff
WHERE sallary >= 100000
GROUP BY speciality;