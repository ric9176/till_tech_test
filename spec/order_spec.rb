require 'order'

describe Order do
  subject(:order) { described_class.new }

  describe '#initilize' do
    it 'initializes with a total of zero' do
      expect(order.total).to eq(0)
    end

    it 'initializes with an empty hash' do
      expect(order.entries).to eq({})
    end
  end

  describe '#add' do
    it 'returns a number of a given item' do
      expect(order.add(2, 'Cafe Latte')).to eq 'Cafe Latte 2 x 4.75'
    end



    it 'adds item price * quantity to the total' do
      order.add(2, 'Cafe Latte')
      expect(order.total).to eq 9.50
    end



    it 'adds items to the entries hash' do
      order.add(2, 'Cafe Latte')
      expect(order.entries).to include("Cafe Latte" => 2)
    end

  end


end
