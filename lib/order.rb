class Order
  attr_reader :total, :items

  def initialize
    @total = 0
    @items = {}
  end

  def print_item(number = 1, item)
    return "#{number} x #{item}"
  end
end
