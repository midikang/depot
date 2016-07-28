Started GET "/" for 211.160.167.138 at 2016-07-28 13:18:43 +0800
  ActiveRecord::SchemaMigration Load (0.4ms)  SELECT "schema_migrations".* FROM "schema_migrations"
Processing by StoreController#index as HTML
  Cart Load (10.0ms)  SELECT "carts".* FROM "carts" WHERE "carts"."id" = ? LIMIT 1  [["id", 13]]
  Product Load (0.5ms)  SELECT "products".* FROM "products" ORDER BY "products".updated_at DESC LIMIT 1
Cache digest for store/index.html: 7738854f1ca889ee6eaff1b793f3e0e5
Read fragment views/store/products/4-20160728042626093611000/7738854f1ca889ee6eaff1b793f3e0e5 (0.5ms)
  Rendered store/index.html.erb within layouts/application (59.8ms)
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:75: warning: circular argument reference - reflection
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:79: warning: circular argument reference - reflection
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:83: warning: circular argument reference - reflection
/usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:102: warning: circular argument reference - reflection
  LineItem Exists (0.3ms)  SELECT 1 AS one FROM "line_items" WHERE "line_items"."cart_id" = ? LIMIT 1  [["cart_id", 13]]
  LineItem Load (0.3ms)  SELECT "line_items".* FROM "line_items" WHERE "line_items"."cart_id" = ?  [["cart_id", 13]]
  Product Load (0.4ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 4]]
  Product Load (0.3ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 1]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 2]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 3]]
  Rendered line_items/_line_item.html.erb (18.3ms)
  Rendered carts/_cart.html.erb (45.5ms)
Completed 200 OK in 476ms (Views: 371.4ms | ActiveRecord: 15.1ms)

Started GET "/" for 211.160.167.138 at 2016-07-28 13:18:58 +0800
Processing by StoreController#index as HTML
  Cart Load (0.3ms)  SELECT "carts".* FROM "carts" WHERE "carts"."id" = ? LIMIT 1  [["id", 13]]
  Product Load (0.4ms)  SELECT "products".* FROM "products" ORDER BY "products".updated_at DESC LIMIT 1
Read fragment views/store/products/4-20160728042626093611000/7738854f1ca889ee6eaff1b793f3e0e5 (0.3ms)
  Rendered store/index.html.erb within layouts/application (2.4ms)
  LineItem Exists (0.3ms)  SELECT 1 AS one FROM "line_items" WHERE "line_items"."cart_id" = ? LIMIT 1  [["cart_id", 13]]
  LineItem Load (0.3ms)  SELECT "line_items".* FROM "line_items" WHERE "line_items"."cart_id" = ?  [["cart_id", 13]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 4]]
  Product Load (0.1ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 1]]
  Product Load (0.1ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 2]]
  Product Load (0.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = ? ORDER BY "products"."id" ASC LIMIT 1  [["id", 3]]
  Rendered line_items/_line_item.html.erb (6.4ms)
  Rendered carts/_cart.html.erb (19.4ms)
Completed 200 OK in 59ms (Views: 54.9ms | ActiveRecord: 1.8ms)