
select
    a.name,
    a.continent,
    (
        select
            "code"
        from
            continent b
        where
            b.name = a.continent
    )
from
    country a;


update
    country a
set
    continent = (
        select
            "code"
        from
            continent b
        where
            b.name = a.continent
    );


select
    *
from
    country;


alter table
    country
alter column
    continent type int4 using continent :: integer;


ALTER TABLE
    country
ADD
    CONSTRAINT fk_continent_code FOREIGN KEY (continent) REFERENCES continent (code);



