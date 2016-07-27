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

## 9.2 Iteration D2: Connecting Products to Carts
rails generate scaffold LineItem product:references cart:belongs_to
rake db:migrate

rake test test/controllers/line_items_controller_test.rb


# CHAPTER 10 - A Smarter Cart

depot> rails generate migration add_quantity_to_line_items quantity:integer

rails generate migration combine_items_in_cart

class CombineItemsInCart < ActiveRecord::Migration
  def up
    # replace multiple items for a single product in a cart with a single item
    Cart.all.each do |cart|
      # count the number of each product in the cart
      sums = cart.line_items.group(:product_id).sum(:quantity)
      
      sums.each do |product_id, quantity|
        if quantity > 1
          # remove individual items
          cart.line_items.where(product_id: product_id).delete_all
          
          # replace with a single item
          item = cart.line_items.build(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end
  
  def down
    # split items with quantity > 1 into multiple items
    LineItem.where("quantity>1").each do |line_item|
      # add individual items
      line_item.quantity.times do
        LineItem.create cart_id: line_item.cart_id,
          product_id: line_item.product_id, quantity: 1
      end
      
      # remove original item
      line_item.destroy
    end
  end
end

rake db:migrate:status

# Creating an Ajax-Based Cart
1. add "remote:true" to button_to in app/views/store/index.html.erb
2. add "format.js" to respond_to in line_items_controller
3. create create.js.erb in app/view/line_items
```
$('#cart').html("<%= escape_javascript render(@cart) %>");
```