require 'menu'

describe Menu do
  let(:test_menu) { described_class.new "Chicken Fried Rice", "Pizza" }
  let(:test_menu2) { described_class.new "Noodles", "Icecream", "Dumplings"}

  context "when menu Chicken Fried Rice & Pizza" do
    it "returns a list of the dishes" do
      expect(test_menu.view).to eq "1. Chicken Fried Rice\n2. Pizza"
    end
  end

  context "when menu Noodles & Icecream" do
    it "returns a list of the dishes" do
      expect(test_menu2.view).to eq "1. Noodles\n2. Icecream\n3. Dumplings"
    end
  end

end
