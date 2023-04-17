SELECT first_name
FROM actor
WHERE actor_id IN ( SELECT actor_id
					FROM film_actor
                    WHERE film_id IN ( SELECT film_id
										FROM film_category
                                        WHERE category_id = ( SELECT category_id
																FROM film_category
                                                                WHERE name = 'Action'))); 