class Order
  def initialize
    @order = []
  end
  def view 
    @order
  end
  def add(dish)
    @order << dish
  end
  def total 
    return @order.inject(0) {|sum, hash| sum + hash[:price]}
  end
end