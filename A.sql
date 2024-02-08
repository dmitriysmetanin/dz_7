select airport_code, coordinates from airports_data
where city = '{"en": "Moscow", "ru": "Москва"}' or city = '{"en": "Kazan", "ru": "Казань"}'
order by airport_code desc;
