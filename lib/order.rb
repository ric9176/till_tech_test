require 'menu'
require 'till'
class Order
  attr_reader :total, :entries, :menu

  def initialize
    @total = 0
    @entries = {}
    @menu = Menu.new

  end

  def print_item(number = 1, entry)
    return "#{entry} #{number} x #{menu.items[entry]}"
  end
end
