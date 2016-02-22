require 'till'

describe Till do
  subject(:till) { described_class.new }

  it 'has a menu with a price list' do
    expect(till.menu("Cafe Latte")).to be_truthy
  end

  it 'can return the price for a given item' do
    expect(till.menu("Cafe Latte")).to eq 4.75
  end
end
