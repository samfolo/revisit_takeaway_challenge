require 'menu'

describe Menu do
  let(:pizza) { { dish: 'Pizza', price: 6 } }
  let(:noodles) { { dish: 'Noodles', price: 4.5 } }
  let(:icecream) { { dish: 'Icecream', price: 2 } }
  let(:dumplings) { { dish: 'Dumplings', price: 1.5 } }
  let(:chicken_fried_rice) { { dish: 'Chicken Fried Rice', price: 3.5 } }

  let(:test_menu) { described_class.new chicken_fried_rice, pizza }
  let(:test_menu2) { described_class.new noodles, icecream, dumplings }

  context "when menu Chicken Fried Rice & Pizza" do
    it "returns a list of the dishes and prices" do
      expect(test_menu.view).to eq "1. Chicken Fried Rice: 3.5\n2. Pizza: 6"
    end
  end

  context "when menu Noodles & Icecream" do
    it "returns a list of the dishes and prices" do
      expect(test_menu2.view).to eq "1. Noodles: 4.5\n2. Icecream: 2\n3. Dumplings: 1.5"
    end
  end
end
