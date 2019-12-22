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
    expect(order.view).to eq "1. 3x Pizza: 18"
  end

  it "returns an order of 5 Dumplings" do
    order.add_item(dumplings, 5)
    expect(order.view).to eq "1. 5x Dumplings: 7.5"
  end
end
