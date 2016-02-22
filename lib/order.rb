require_relative 'menu'
require_relative 'till'
class Order
  attr_reader :total, :entries, :menu

  def initialize
    @total = 0
    @entries = {}
    @menu = Menu.new


  end

 def add(number = 1, entry)
   add_to_total(number, entry)
   add_to_entries(number, entry)
   print_item(number, entry)
 end


private

def price(entry)
  return menu.items[entry]
end


def print_item(number, entry)
  return "#{entry} #{number} x #{price(entry)}"
end

def add_to_total(number, entry)
  @total += number * price(entry)
end

def add_to_entries(number, entry)
  entries[entry] == nil ? entries[entry] = number : entries[entry] += number
end


end
