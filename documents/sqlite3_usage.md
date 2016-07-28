$ sqlite3 -line db/development.sqlite3
SQLite version 3.8.2 2013-12-06 14:53:30
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> select * from orders;
        id = 2
      name = Midi Kang
   address = 123 Main St
     email = midi13@gmail.com
  pay_type = Check
created_at = 2016-07-28 02:57:42.083766
updated_at = 2016-07-28 02:57:42.083766
sqlite> select 8 from line_items;
    8 = 8

    8 = 8

    8 = 8
sqlite> select * from line_items;
        id = 12
product_id = 1
   cart_id = 
created_at = 2016-07-28 02:56:23.878328
updated_at = 2016-07-28 02:57:42.085812
  quantity = 1
  order_id = 2

        id = 13
product_id = 3
   cart_id = 
created_at = 2016-07-28 02:56:27.926075
updated_at = 2016-07-28 02:57:42.087259
  quantity = 5
  order_id = 2

        id = 14
product_id = 2
   cart_id = 
created_at = 2016-07-28 02:56:34.247322
updated_at = 2016-07-28 02:57:42.088365
  quantity = 1
  order_id = 2
sqlite> .quit
