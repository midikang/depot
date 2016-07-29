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