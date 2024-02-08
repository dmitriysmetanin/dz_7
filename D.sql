select departure_airport, count(*) as count
from flights
where departure_airport not in ('KZN', 'DME', 'OVB', 'IKT', 'LED', 'SVO')
group by departure_airport
order by count asc
;