require 'order'

describe Order do
  subject(:order) { described_class.new }

  describe '#initilize' do
    it 'initializes with a total of zero' do
      expect(order.total).to eq(0)
    end

    it '' do
      expect(order.items).to eq({})
    end
  end

  describe '#print_item' do
    it 'returns a number of a given item' do
      expect(order.print_item(2, 'Cafe Latte')).to eq '2 x Cafe Latte'
    end
  end
end
