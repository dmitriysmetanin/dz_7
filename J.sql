select flights.flight_no as flight_no, min(bookings.total_amount) as min_price, max(bookings.total_amount) as max_price
from flights
join boarding_passes on flights.flight_id = boarding_passes.flight_id
join tickets on tickets.ticket_no = boarding_passes.ticket_no
join bookings on tickets.book_ref = bookings.book_ref
group by flights.flight_no
order by flights.flight_no asc
;