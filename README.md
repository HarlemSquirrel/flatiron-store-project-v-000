# Flatiron Store on Rails

We're going to build an e-commerce site! We're going to make an online store where users can browse items, put items in their carts, and buy items, which changes our inventory.


## Instructions

### Users

  1. Have just an email and password
  2. Should be able to log in and log out
  3. Also sign up

### Items

  1. List of available items whether you are logged in or not
  2. If logged in, each item should have an "Add to Cart" button
  3. When the user adds an item to the cart it should show them their current cart

### Cart/Checkout

  1. Users should be able to checkout from their cart
  2. This shows them their cart afterwards, and deducts inventory from each item
  3. Prices should be in the `$XX.XX` format
  4. The Checkout process should set that current cart to a status of "submitted"

### Headers/Nav

  1. Users should know who they are logged in as
  2. Users should be able to sign in/out from the navigation bar
  3. Users should always be able to go "home"
  4. If the user has a current cart, there should be a "Cart" link to their current cart



### Notes

Cart
status
belong_to :user
has_many :line_items
has_many :items, through: :line_items
#total method
#add_item method

Category
title
has_many items

Item
title
price
has inventroy
belongs_to category
has_many line_items
has many line_items consolidated by line_item quantity
##available_items class method

LineItem
belongs_to cart
belongs_to item
has a quantity, default 1

Orders
belongs_to user
item_list?
total
date_placed

User
has_many :carts
has a current_cart
