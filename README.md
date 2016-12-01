# Depot

Agile Web Development with Rails

* Rails version
rails 4.0.0

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

## 11.3 Iteration F3: Highlighting Changes
# add by Midi
gem 'jquery-ui-rails', '5.0.5'
bundle install

application.js
```
//= require jquery-ui/effect-blind
```

```
format.js { @current_item = @line_item}
```

```
<% if line_item == @current_item %>
  <tr id="current_item">
<% else %>
  <tr>
```


create.js.erb
```
$('#cart').html("<%= escape_javascript render(@cart) %>");

$('#current_item').css({
  'background-color':'#88ff88'
}).animate({
'background-color':'#114411'
}, 1000);
```


# CHAPTER 12 - Task G: Check Out!
In this chapter, we’ll see
• linking tables with foreign keys;
• using belongs_to, has_many, and :through;
• creating forms based on models (form_for);
• linking forms, models, and views; and
• generating a feed using atom_helper on model objects.

## 12.1 Iteration G1: Capturing an Order
```
rails generate scaffold Order name address:text email pay_type
```


# CHAPTER 14 - Logging In
## 14.1 Iteration I1: Adding Users

rails generate scaffold User name:string password:digest

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

## 14.2 Iteration I2: Authenticating Users
depot> rails generate controller Sessions new create destroy
depot> rails generate controller Admin index


```
<div class="depot_form">
  <% if flash[:alert] %>
    <p id="notice"><%= flash[:alert] %></p>
  <% end %>
  
  <%= form_tag do %>
  <fieldset>
    <legend>Please Log In</legend>
    <div>
      <%= label_tag :name%>
      <%= text_field_tag :name, params[:name]%>
    </div>
    <div>
      <%= label_tag :password%>
      <%= password_field_tag :password, params[:password]%>
    </div>
    <div>
      <%= submit_tag "Login" %>
    </div>
  </fieldset>
  <% end %>
</div>
```

This form is different from ones we saw earlier. Rather than using form_for, it
uses form_tag, which simply builds a regular HTML <form>. Inside that form,
it uses text_field_tag and password_field_tag, two helpers that create HTML <input>
tags. Each helper takes two parameters. The first is the name to give to the
field, and the second is the value with which to populate the field. This style
of form allows us to associate values in the params structure directly with form
fields—no model object is required. In our case, we chose to use the params
object directly in the form. An alternative would be to have the controller set
instance variables.
We also make use of the label_tag helpers to create HTML <label> tags. This
helper also accepts two parameters. The first contains the name of the field,
and the second contains the label to be displayed.
