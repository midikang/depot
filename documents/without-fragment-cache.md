Started GET "/" for 211.160.167.138 at 2016-07-28 13:16:33 +0800
  ActiveRecord::SchemaMigration Load (0.3ms)  SELECT "schema_migrations".* FROM "schema_migrations"
Processing by StoreController#index as HTML
  Cart Load (6.7ms)  SELECT "carts".* FROM "carts" WHERE "carts"."id" = ? LIMIT 1  [["id", 13]]
  Product Load (0.6ms)  SELECT "products".* FROM "products" ORDER BY "products".updated_at DESC LIMIT 1
  Product Load (0.5ms)  SELECT "products".* FROM "products" ORDER BY "products".title ASC
  Rendered store/index.html.erb within layouts/application (88.1ms)
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:75: warning: circular argument reference - reflection
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:79: warning: circular argument reference - reflection
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:83: warning: circular argument reference - reflection
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:102: warning: circular argument reference - reflection
  LineItem Exists (0.2ms)  SELECT 1 AS one FROM "line_items" WHERE "line_items"."cart_id" = ? LIMIT 1  [["cart_id", 13]]
  LineItem Load (0.5ms)  SELECT "line_items".* FROM "line_items" WHERE "line_items"."cart_id" = ?  [["cart_id", 13]]
  Product Load (0.3ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 4]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 1]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 2]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 3]]
  Rendered line_items/_line_item.html.erb (15.3ms)
  Rendered carts/_cart.html.erb (47.0ms)
Completed 200 OK in 560ms (Views: 475.8ms | ActiveRecord: 12.2ms)

Started GET "/" for 211.160.167.138 at 2016-07-28 13:17:53 +0800
Processing by StoreController#index as HTML
  Cart Load (0.3ms)  SELECT "carts".* FROM "carts" WHERE "carts"."id" = ? LIMIT 1  [["id", 13]]
  Product Load (0.3ms)  SELECT "products".* FROM "products" ORDER BY "products".updated_at DESC LIMIT 1
  Product Load (0.2ms)  SELECT "products".* FROM "products" ORDER BY "products".title ASC
  Rendered store/index.html.erb within layouts/application (6.8ms)
  LineItem Exists (0.2ms)  SELECT 1 AS one FROM "line_items" WHERE "line_items"."cart_id" = ? LIMIT 1  [["cart_id", 13]]
  LineItem Load (0.2ms)  SELECT "line_items".* FROM "line_items" WHERE "line_items"."cart_id" = ?  [["cart_id", 13]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 4]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 1]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 2]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 3]]
  Rendered line_items/_line_item.html.erb (10.7ms)
  Rendered carts/_cart.html.erb (14.7ms)
Completed 200 OK in 53ms (Views: 49.9ms | ActiveRecord: 2.0ms)