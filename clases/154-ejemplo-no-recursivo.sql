
    
    
    
select
    follower_id
from
    followers
where
    leader_id = 1;
    
    
    
select
    *
from
    followers
where
    leader_id in (
        select
            follower_id
        from
            followers
        where
            leader_id = 1
    );