select count(*)
from flights
left outer join boarding_passes
    on flights.flight_id = boarding_passes.flight_id

where boarding_passes.ticket_no is null
group by ticket_no
;