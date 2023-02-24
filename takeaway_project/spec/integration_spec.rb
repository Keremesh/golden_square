require "menu"
require "order"

RSpec.describe "Integration"do
  context "creating order" do
    it "adds one dish from menu to the order, shows order" do
      order = Order.new
      menu = Menu.new
      dish = menu.view[1] #select the second item on the menu
      order.add(dish)
      expect(order.view).to eq [dish] 
    end
    it "adds several dishes from menu to the order, shows order" do
      order = Order.new
      menu = Menu.new
      dish_1 = menu.view[1] 
      dish_2 = menu.view[5]
      dish_3 = menu.view[6]
      order.add(dish_1)
      order.add(dish_2)
      order.add(dish_3)
      expect(order.view).to eq [dish_1, dish_2, dish_3] 
    end
  end
  it "calculates the order total" do
    order = Order.new
    menu = Menu.new 
    dish_1 = menu.view[1] 
    dish_2 = menu.view[5]
    dish_3 = menu.view[6]
    order.add(dish_1)
    order.add(dish_2)
    order.add(dish_3)
    expect(order.total).to eq 17.0 
  end

end
# 3 Adds dish from menu to the order, shows order -Integration test
# order = Order.new
# dish1 = Dish.new{Dish: chicken, price: 11.5}
# dish2 = Dish.new{Dish: vegetables, price: 6}
# order.add(menu_item[1])
# order.add(menu_item[2])
# order.view # => {beef: 12.5, pork: 14}
