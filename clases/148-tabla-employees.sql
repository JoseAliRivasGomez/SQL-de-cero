

CREATE SEQUENCE IF NOT EXISTS employees_id_seq;

CREATE TABLE "public"."employees" (
    "id" int4 NOT NULL DEFAULT nextval('employees_id_seq' :: regclass),
    "name" varchar,
    "reports_to" int4,
    PRIMARY KEY ("id")
);

INSERT INTO
    "public"."employees" ("id", "name", "reports_to")
VALUES
    (1, 'Jefe Carlos', NULL);

INSERT INTO
    "public"."employees" ("id", "name", "reports_to")
VALUES
    (2, 'SubJefe Susana', 1);

INSERT INTO
    "public"."employees" ("id", "name", "reports_to")
VALUES
    (3, 'SubJefe Juan', 1);

INSERT INTO
    "public"."employees" ("id", "name", "reports_to")
VALUES
    (4, 'Gerente Pedro', 3),
    (5, 'Gerente Melissa', 3),
    (6, 'Gerente Carmen', 2),
    (7, 'SubGerente Ramiro', 5),
    (8, 'Programador Fernando', 7),
    (9, 'Programador Eduardo', 7),
    (10, 'Presidente Karla', NULL);




select
    *
from
    employees
where
    reports_to = 1
union
select
    *
from
    employees
where
    reports_to in (2, 3)
union
select
    *
from
    employees
where
    reports_to in (4, 5, 6)