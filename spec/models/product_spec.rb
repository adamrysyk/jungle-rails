require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:category) }
  end


  describe "description" do
    before do
      # Creating a few objects we'll use on our tests
      # Bicycles need Brands and Styles to be valid
      @outdoor = Category.create(name: 'Outdoor')
    end

    it "should have a name, price, quantity and category" do
      @bike = Product.create(
        name: "bike",
        price: 999,
        quantity: 100,
        category: @outdoor
      )
      expect(@bike).to be_valid
   end

  end

end
