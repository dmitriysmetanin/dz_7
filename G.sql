select distinct passenger_name as data, 'Пассажир' as data_type
from boarding_passes

join flights on boarding_passes.flight_id = flights.flight_id
join tickets on tickets.ticket_no = boarding_passes.ticket_no


UNION

select airport_name->>'ru' as data, 'Аэропорт' as data_type
from airports_data

order by data_type desc, data asc
;