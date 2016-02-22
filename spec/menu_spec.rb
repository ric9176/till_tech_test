require 'menu'

describe Menu do

  subject(:menu) { described_class.new }

  it 'returns a hash of menu items and prices' do
    expect(menu.items).to include("Cafe Latte"=>4.75)
  end

  it 'can return the price for a given item' do
    expect(menu.items["Tiramisu"]).to eq 11.40
  end


end
