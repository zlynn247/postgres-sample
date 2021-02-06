--find popular rental categories
with genres as 
	( 
		SELECT c.name as Category, count(1) as RentalCount, sum(p.amount) as PaymentAmount
		
		from rental r
		
		join inventory i on r.inventory_id = i.inventory_id
		join payment p using(rental_id)
		join film f using(film_id)
		join film_category fc using(film_id)
		join category c  using(category_id)
		group by c.name
	
	)
	
SELECT * FROM genres

order by rentalcount desc