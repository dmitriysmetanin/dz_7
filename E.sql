select flight_id, scheduled_departure, count
from flights
join (select flight_id as fid, count(*) as count
from boarding_passes
group by flight_id
) on flights.flight_id = fid

where count between 27 and 90
order by flight_id desc
;