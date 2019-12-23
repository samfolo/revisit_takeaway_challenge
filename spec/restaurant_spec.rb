require 'restaurant'

describe Restaurant do
  let(:menu) { double :menu, view: "1. Noodles: 4.5\n2. Icecream: 2\n3. Dumplings: 1.5" }
  let(:restaurant) { described_class.new(menu, order, order_class) }
  let(:order) { double :order, view: "1. 5x Dumplings: £7.50", add_item: nil, total: 7.5 }
  let(:order_2) { double :order, view: "1. 1x Icecream: £2.00", add_item: nil, total: 2 }
  let(:order_class) { double :order_class, new: order_2 }
  let(:icecream) { { dish: 'Icecream', price: 2 } }
  it "has a menu" do
  # As a customer
  # So that I am reassured that my order will be delivered on time
  # I would like to receive a text such as "Thank you!
  # Your order was placed and will be delivered before 18:52"
  # after I have ordered
  expect(restaurant.view_menu).to eq "1. Noodles: 4.5\n2. Icecream: 2\n3. Dumplings: 1.5"
  end

  it 'can keep track of an order' do
    expect(restaurant.view_current_order).to eq "1. 5x Dumplings: £7.50"
  end

  it 'can keep track of an order' do
    restaurant.confirm_order
    restaurant.add_item_to_order(icecream)
    expect(restaurant.view_current_order).to eq "1. 1x Icecream: £2.00"
  end
end
