-- Comments in SQL Start with dash-dash --
SELECT * from analytics WHERE id=1880;
SELECT id, app_name from analytics WHERE last_updated = '2018-08-01';
SELECT category, count(category) from analytics GROUP BY category;
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating desc;
SELECT app_name,price,rating FROM analytics WHERE rating<3 ORDER BY price desc LIMIT 1;
app_name,rating FROM analytics WHERE min_installs<50 AND rating <>0 ORDER BY rating desc;
SELECT app_name FROM analytics WHERE rating<3 AND reviews > 10000;
SELECT app_name FROM analytics WHERE price <1 AND price >.1 ORDER BY reviews desc LIMIT 10;
SELECT * FROM analytics WHERE last_updated=(SELECT MIN(last_updated) FROM analytics);
SELECT * FROM analytics WHERE price=(SELECT MAX(price) FROM analytics);
SELECT SUM(reviews) FROM analytics;
SELECT category FROM analytics GROUP BY category HAVING COUNT(category)>300;
SELECT app_name, reviews, min_installs, min_installs/reviews FROM analytics WHERE min_installs>100000 ORDER BY min_installs/reviews desc LIMIT 1;