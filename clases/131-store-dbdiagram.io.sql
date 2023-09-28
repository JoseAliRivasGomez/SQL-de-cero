enum product_status {
  in_stock
  out_of_stock
  running_low
}

enum order_status {
  placed
  confirmied
  processed
  delivered
}

table product {
  id integer [pk, increment]
  serial varchar 
  name varchar(200)
  merchant integer
  price float(10,4)
  status product_status
  stock integer

  created_at timestamp [default: 'now()']
}

table merchant {
  id integer [pk, increment]
  name varchar
  country integer

  created_at timestamp [default: 'now()']
}

table country {
  id integer [pk, increment]
  name varchar
}

table order {
  id integer [pk, increment]
  status order_status
  user_id integer

  total float(12,2)

  created_at timestamp [default: 'now()']
}

table order_item {
  id integer [pk, increment]
  order_id integer
  product_id integer
  quantity integer
  price float(10,4)
}

table user {
  id integer [pk, increment] 
  username varchar [not null, unique]
  email varchar [not null, unique]
  password varchar [not null]
  name varchar [not null]
  role varchar [not null]
  gender varchar(10) [not null]
  avatar varchar

  created_at timestamp [default: 'now()']
}

Ref: "country"."id" < "merchant"."country"

Ref: "merchant"."id" < "product"."merchant"

Ref: "order"."id" < "order_item"."order_id"

Ref: "product"."id" < "order_item"."product_id"

Ref: "user"."id" < "order"."user_id"