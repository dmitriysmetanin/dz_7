SELECT concat_ws(', ', airport_code, airport_name->'ru', city->'ru', coordinates, timezone) AS full_information
FROM airports_data
order by full_information asc
;