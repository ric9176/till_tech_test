require 'json'
class Menu

attr_reader :items

  def initialize

    file = File.read('hipstercoffee.json')
    data_hash = JSON.parse(file)

    @items = data_hash[0]["prices"][0]
  end
end
