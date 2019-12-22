require 'order'

describe Order do
  let(:order) { described_class.new }
  let(:menu) { double :menu }
  let(:pizza) { { dish: 'Pizza', price: 6 } }
  let(:noodles) { { dish: 'Noodles', price: 4.5 } }
  let(:icecream) { { dish: 'Icecream', price: 2 } }
  let(:dumplings) { { dish: 'Dumplings', price: 1.5 } }
  let(:chicken_fried_rice) { { dish: 'Chicken Fried Rice', price: 3.5 } }

  it "returns an order of 3 Pizzas" do
    order.add_item(pizza, 3)
    expect(order.view).to eq "1. 3x Pizza: £18.00"
  end

  it "returns an order of 5 Dumplings" do
    order.add_item(dumplings, 5)
    expect(order.view).to eq "1. 5x Dumplings: £7.50"
  end

  describe '#total' do
    it "calculates the total of 4 dumplings, 2 pizzas and an icecream as £20.00" do
      order.add_item(dumplings, 4)
      order.add_item(pizza, 2)
      order.add_item(icecream)

      expect(order.total).to eq '£20.00'
    end

    it "calculates the total of 2 dumplings, 3 pizzas and 2 noodles as £30.00" do
      order.add_item(dumplings, 2)
      order.add_item(pizza, 3)
      order.add_item(noodles, 2)

      expect(order.total).to eq '£30.00'
    end
  end

end
