require "menu"

RSpec.describe Menu do
  it "shows a menu" do
    menu = Menu.new
    expect(menu.view).to eq [{name: "chicken", price: 12}, 
    {name: "beef", price: 12.5}, 
    {name: "pork", price: 14},  
    {name: "salmon", price: 10}, 
    {name: "mushrooms", price: 9.5},
    {name: "juice", price: 3.2}, 
    {name: "water", price: 1.3}]
  end
end