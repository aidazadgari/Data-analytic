SELECT * FROM sakila.film;     # read whole file
SELECT title FROM sakila.film;    # read title column
SELECT film_id,title FROM sakila.film;    # read film_id and 
SELECT film_id,title FROM sakila.film where film_id=100;
SELECT film_id,title FROM sakila.film where film_id>100;
SELECT film_id,title FROM sakila.film where film_id between 50 and 100;