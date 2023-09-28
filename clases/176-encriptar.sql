

CREATE TABLE "public"."user" (
    "id" serial,
    "username" varchar(50),
    "password" text ,
    "last_login" timestamp,
    PRIMARY KEY ("id")
);




CREATE EXTENSION pgcrypto;


insert into
    "user" (username, password)
values(
        'jose',
        crypt('123456', gen_salt('bf'))
    );


insert into
    "user" (username, password)
values(
        'melissa',
        crypt('123456', gen_salt('bf'))
    );


select
    count(*)
from
    "user"
where
    username = 'jose'
    and password = crypt('123456', password);








