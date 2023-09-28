
create
or replace view comments_per_week as
select
    date_trunc('week', posts.created_at) as weeks,
    sum(claps.counter) as total_claps,
    count(distinct posts.post_id) as number_of_posts,
    count(*) as number_of_claps
from
    posts
    INNER join claps on claps.post_id = posts.post_id
GROUP by
    weeks
order by
    weeks desc;



select
    *
from
    claps
where
    post_id = 1;


select
    *
FROM
    comments_per_week;


-- SE GUARDA EN MEMORIA, CONSUME ALMACENAMIENTO
create MATERIALIZED view comments_per_week_mat as
select
    date_trunc('week', posts.created_at) as weeks,
    sum(claps.counter) as total_claps,
    count(distinct posts.post_id) as number_of_posts,
    count(*) as number_of_claps
from
    posts
    INNER join claps on claps.post_id = posts.post_id
GROUP by
    weeks
order by
    weeks desc;



select
    *
from
    comments_per_week_mat;


REFRESH MATERIALIZED view comments_per_week_mat;


select
    *
from
    posts
where
    post_id = 1;



ALTER VIEW comments_per_week RENAME TO posts_per_week

ALTER MATERIALIZED VIEW comments_per_week_mat RENAME TO posts_per_week_mat