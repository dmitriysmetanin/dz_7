select distinct passenger_name, departure_airport, arrival_airport
from boarding_passes

join flights on boarding_passes.flight_id = flights.flight_id
join tickets on tickets.ticket_no = boarding_passes.ticket_no

;