== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

## create project
rails generate scaffold Product \
title:string description:text image_url:string price:decimal


# CHAPTER 9 - Task D: Cart Creation

## 9.1 Iteration D1: Finding a Cart
rails generate scaffold Cart
rake db:migrate

module CurrentCart
  extend ActiveSupport::Concern
  
  private
    def set_cart
      @cart = Car.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end


## 9.2 Iteration D2: Connecting Products to Carts
rails generate scaffold LineItem product:references cart:belongs_to
rake db:migrate

At the model level, there is no difference between a simple reference and a
“belongs to” relationship. Both are implemented using the belongs_to() method.
