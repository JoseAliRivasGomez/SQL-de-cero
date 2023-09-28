

select
    DISTINCT continent
from
    country
order by
    continent asc;

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS continent_code_seq;

CREATE TABLE "public"."continent" (
    "code" int4 NOT NULL DEFAULT nextval('continent_code_seq' :: regclass),
    "name" text NOT NULL,
    PRIMARY KEY ("code")
);

INSERT INTO
    continent (name)
SELECT
    DISTINCT continent
FROM
    country
ORDER BY
    continent ASC;

select
    *
from
    continent;



