SELECT f1. title, f1.length, f2.title
FROM film AS f1
INNER JOIN film AS f2 ON f1.title <> f2.title AND f1.length = f2.length
ORDER BY length ASC;