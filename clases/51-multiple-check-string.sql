SELECT
    *
FROM
    country
where
    code = 'CRI';

select
    DISTINCT continent
from
    country;

Alter TABLE
    country
add
    CHECK(
        (continent = 'Asia' :: text)
        or (continent = 'South America' :: text)
        or (continent = 'North America' :: text)
        or (continent = 'Oceania' :: text)
        or (continent = 'Antarctica' :: text)
        or (continent = 'Africa' :: text)
        or (continent = 'Europe' :: text)
    );

