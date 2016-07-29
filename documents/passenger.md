
https://www.phusionpassenger.com/library/walkthroughs/start/ruby.html

git clone https://github.com/phusion/passenger-ruby-sinatra-demo.git
cd passenger-ruby-sinatra-demo

gem "passenger", ">= 5.0.25", require: "phusion_passenger/rack_handler"

cd /path-to-your-app
bundle install

bundle exec passenger start


