require 'json'
class Till


  def menu(item)
    file = File.read('hipstercoffee.json')
    data_hash = JSON.parse(file)

    return data_hash[0]["prices"][0][item]
  end

end
