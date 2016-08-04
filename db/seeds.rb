#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',    
  price: 36.00)
# . . .
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)
# . . .

Product.create!(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95)

Product.create!(title: 'Agile Web Development with Rails 4',
  description: 
    %{<p>
        Rails just keeps on changing. Both Rails 3 and 4, as well as Ruby 1.9 and 2.0, bring hundreds of improvements, including new APIs and substantial performance enhancements. 
        The fourth edition of this award-winning classic has been reorganized and refocused so it's more useful than ever before for developers new to Ruby and Rails. 
        Rails 4 introduces a number of user-facing changes, and the ebook has been updated to match all the latest changes and new best practices in Rails. This includes full support for Ruby 2.0, controller concerns, Russian Doll caching, strong parameters, Turbolinks, new test and bin directory layouts, and much more. 
        Ruby on Rails helps you produce high-quality, beautiful-looking web applications quickly. You concentrate on creating the application, and Rails takes care of the details. 
        Tens of thousands of developers have used this award-winning book to learn Rails. It's a broad, far-reaching tutorial and reference that's recommended by the Rails core team. 
        If you're new to Rails, you'll get step-by-step guidance. If you're an experienced developer, this book will give you the comprehensive, insider information you need. Rails has evolved over the years, and this book has evolved along with it. We still start with a step-by-step walkthrough of building a real application, and in-depth chapters look at the built-in Rails features. This edition now gives new Ruby and Rails users more information on the Ruby language and takes more time to explain key concepts throughout. 
        Best practices on how to apply Rails continue to change, and this edition keeps up. Examples use Concerns, Russian Doll caching, and Turbolinks, and the book focuses throughout on the right way to use Rails. Additionally, this edition now works on Ruby 2.0, a new release of Ruby with substantial functional and performance improvements. 
        This edition is for Rails4.0 and beyond.
      </p>},
  image_url: 'aedr.jpg',
  price: 50.3)

Shipment.delete_all
Shipment.create!(status: 'Shipment Created',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Send To Node',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Normal",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Shipment Packed',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Shipment Shipped',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")  

Shipment.create!(status: 'Shipment Created',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Send To Node',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Normal",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Shipment Packed',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Shipment Shipped',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")  
  
Shipment.create!(status: 'Shipment Created',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Send To Node',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Normal",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Shipment Packed',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")
  
Shipment.create!(status: 'Shipment Shipped',
  buyer: "Google",
  ship_date:   Time.zone.now,    
  origin: "Beijing",
  destination: "Shanghai",
  total_weight: 123.45,
  total_volumn: 456.78,
  priority: "Urgent",
  order_type: "Sales Order")    