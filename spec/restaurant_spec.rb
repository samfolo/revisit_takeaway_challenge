require 'restaurant'

describe Restaurant do
  let(:menu) { double :menu, view: "1. Noodles: 4.5\n2. Icecream: 2\n3. Dumplings: 1.5" }
  let(:restaurant) { described_class.new(menu) }
  it "has a menu" do
# As a customer
# So that I am reassured that my order will be delivered on time
# I would like to receive a text such as "Thank you!
# Your order was placed and will be delivered before 18:52"
# after I have ordered
  expect(restaurant.view_menu).to eq "1. Noodles: 4.5\n2. Icecream: 2\n3. Dumplings: 1.5"
  end
end
