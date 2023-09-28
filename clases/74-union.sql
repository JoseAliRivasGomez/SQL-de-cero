


select
    code,
    name
from
    continent
where
    name like '%America%'
union
select
    code,
    name
from
    continent
where
    code in (3, 5)
ORDER BY
    name ASC;