# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

* diagram in png
```

_Also design the interface of each class in more detail._

```ruby
class Order
  def initialize
    @order = [] # ex. ["chicken", "11.5"]
  end

  def add(dish) # dish is an instance of Menu
    # Dish gets added to the order
    # Returns nothing

  end

  def view
    @order
    # Returns a list of ordered dishes
  end
  
  def sum(price)
  
  end

  def total #shows items ordered and final price
  end
end

class Dish
  def initialize(dish, price) # dish is a string, price is a float 
    @dish = dish
    @price = price
  end
  def format 
    return "#{dish}: #{price}"
  end
  def dish
    @dish
  end
  def price
    @price
  end
end

# How to view full menu? is it even needed? I think so, otherwise if its just Dish and Order, I am creating dishes on the go an adding them to the order. I need to pull dishes from a ready list (menu).

class Menu #this is not for a user, but for restaurant? to be able to create new Menus by adding instances of menus and then add dishes into those
  def initialize # 
    @menu = {}
  end
  def list
    @menu
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

# 1 Shows menu - UNIT TEST - menu
menu1 = Menu.new{chicken: 12, beef: 12.5, pork: 14, salmon: 10, mushrooms: 9.5, juice: 3.2, water: 1.3}
menu.view # => {chicken: 12, beef: 12.5, pork: 14, salmon: 10, mushrooms: 9.5, juice: 3.2, water: 1.3}

# view an item -UNIT TEST - menu
menu_item = [1] # => [beef: 12.5]


# 2 Shows empty order -UNIT TEST
order = Order.new
order.view # => {}

# 3 Adds dishes from menu to the order, shows order -Integration test
order = Order.new
menu = Menu.new
dish_1 = menu.view[1] #select the second item on the menu
dish_2 = menu.view[5]
dish_3 = menu.view[6]
order.add(dish_1)
order.add(dish_2)
order.add(dish_3)
order.view # => [dish_1, dish_2, dish_3] 

# 4 Calculates the total - integration test
order = Order.new
# dish1 = Dish.new{Dish: chicken, price: 11.5}
# dish2 = Dish.new{Dish: vegetables, price: 6}
order.sum(menu_item[1], menu_item[2])
  |key, value|
  hash = { :a => 1, :b => 6, :c => 20 }
  p hash.inject(0) { |sum, tuple| sum += tuple[1] } # => 27
  add values
# order.add(dish1)
order.sum # => {[Dish: chicken, price: 11.5], [Dish: vegetables, price: 6]}
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

<!-- END GENERATED SECTION DO NOT EDIT -->