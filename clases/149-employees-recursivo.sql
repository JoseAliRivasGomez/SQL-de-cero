


WITH RECURSIVE bosses as (
        -- Init
        select
            id,
            name,
            reports_to
        from
            employees
        where
            id = 1
        UNION
            -- Recursive
        select
            employees.id,
            employees.name,
            employees.reports_to
        from
            employees
            INNER JOIN bosses on bosses.id = employees.reports_to
    )
select
    *
from
    bosses;