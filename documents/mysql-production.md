https://ruby-china.org/topics/27542

group :production do
  gem 'mysql2' , '~> 0.3.13'
end

production:
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: depot_production
  pool: 5
  username: <%= ENV['USERNAME'] %>
  password: <%= ENV['PASSWORD'] %>
  host:     <%= ENV['IP'] %>
  
  
  
rails s -b $IP -p $PORT -e production  
```
=> Booting Passenger application server
=> Rails 4.0.0 application starting in production on http://0.0.0.0:8080
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
=============== Phusion Passenger Standalone web server started ===============
PID file: /home/ubuntu/workspace/depot/tmp/pids/passenger.8080.pid
Log file: /home/ubuntu/workspace/depot/log/passenger.8080.log
Environment: production
Accessible via: http://0.0.0.0:8080/

You can stop Phusion Passenger Standalone by pressing Ctrl-C.
Problems? Check https://www.phusionpassenger.com/library/admin/standalone/troubleshooting/
===============================================================================
App 34904 stdout: 
App 34904 stderr: /usr/local/rvm/gems/ruby-2.3.0/gems/activesupport-4.0.0/lib/active_support/values/time_zone.rb:282: warning: circular argument reference - now
I, [2016-07-29T17:15:31.822673 #34922]  INFO -- : Started HEAD "/" for 127.0.0.1 at 2016-07-29 17:15:31 +0800
I, [2016-07-29T17:15:31.858078 #34922]  INFO -- : Processing by StoreController#index as HTML
I, [2016-07-29T17:15:31.948377 #34922]  INFO -- : Cache digest for store/index.html: 6036642c48b41c083f8954026aa01f5a
I, [2016-07-29T17:15:31.949620 #34922]  INFO -- : Read fragment views/store/products/1-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (0.3ms)
I, [2016-07-29T17:15:31.951484 #34922]  INFO -- : Read fragment views/entry/products/4-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (0.1ms)
I, [2016-07-29T17:15:31.956578 #34922]  INFO -- : Write fragment views/entry/products/4-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (2.4ms)
I, [2016-07-29T17:15:31.957051 #34922]  INFO -- : Read fragment views/entry/products/1-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (0.1ms)
I, [2016-07-29T17:15:31.960184 #34922]  INFO -- : Write fragment views/entry/products/1-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (1.7ms)
I, [2016-07-29T17:15:31.960568 #34922]  INFO -- : Read fragment views/entry/products/2-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (0.1ms)
I, [2016-07-29T17:15:31.963701 #34922]  INFO -- : Write fragment views/entry/products/2-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (1.9ms)
I, [2016-07-29T17:15:31.964282 #34922]  INFO -- : Read fragment views/entry/products/3-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (0.1ms)
I, [2016-07-29T17:15:31.967504 #34922]  INFO -- : Write fragment views/entry/products/3-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (1.8ms)
I, [2016-07-29T17:15:31.969391 #34922]  INFO -- : Write fragment views/store/products/1-20160729090950000000000/6036642c48b41c083f8954026aa01f5a (1.6ms)
I, [2016-07-29T17:15:31.969583 #34922]  INFO -- :   Rendered store/index.html.erb within layouts/application (56.9ms)
App 34922 stdout: 
App 34904 stderr: /usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:75: warning: circular argument reference - reflection
App 34904 stderr: /usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:79: warning: circular argument reference - reflection
App 34904 stderr: /usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:83: warning: circular argument reference - reflection
App 34904 stderr: /usr/local/rvm/gems/ruby-2.3.0/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:102: warning: circular argument reference - reflection
I, [2016-07-29T17:15:32.021245 #34922]  INFO -- :   Rendered collection (0.0ms)
I, [2016-07-29T17:15:32.023230 #34922]  INFO -- :   Rendered carts/_cart.html.erb (3.6ms)
I, [2016-07-29T17:15:32.024336 #34922]  INFO -- : Completed 200 OK in 166ms (Views: 109.7ms | ActiveRecord: 22.5ms)

```