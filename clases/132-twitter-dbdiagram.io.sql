



table user {
  id integer [pk, increment] 
  username varchar(200)
  slug varchar(100)
  email varchar [unique]
  password varchar
  bio text
  avatar varchar

  created_at timestamp [default: 'now()']
}

table tweet {
  id integer [pk, increment] 
  content varchar(150)
  user_id integer [ref: > user.id]

  created_at timestamp [default: 'now()']
}

table follows {
  id integer [pk, increment] 
  follower_id integer [ref: > user.id]
  followed_by_id integer [ref: > user.id]

  created_at timestamp [default: 'now()']
}