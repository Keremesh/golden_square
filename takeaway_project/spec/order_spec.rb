require "order"

RSpec.describe Order do
  it "shows an empty order" do
    order = Order.new
    expect(order.view).to eq []
  end
end