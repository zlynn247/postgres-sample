
SELECT
		CASE WHEN DATE_PART('DAY', r.return_date - rental_date) < rental_duration then 'Early'
			when DATE_PART('day', r.return_date- rental_date) > rental_duration then 'Late'
			else 'On Time' END as ReturnType, COUNT(*) as ReturnCount

FROM rental r
join inventory i using(inventory_id)
join film f using(film_id)

GROUP BY 	CASE WHEN DATE_PART('DAY', r.return_date - rental_date) < rental_duration then 'Early'
			when DATE_PART('day', r.return_date- rental_date) > rental_duration then 'Late'
			else 'On Time' END