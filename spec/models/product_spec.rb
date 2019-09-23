require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    cat1 = Category.find_or_create_by! name: 'Apparel'
    prod = cat1.products.new(
      name: 'Gecko Squad 5',
      price: 54_000,
      quantity: 3
    )

    it "should pass validations" do
      expect(prod).to be_valid
    end

    it "should not accept nil name" do
      prod.name = nil
      expect(prod).to_not be_valid
    end

    it "should not accept nil price" do
      prod.price = nil
      expect(prod).to_not be_valid
    end

    it "should not accept nil quantity" do
      prod.quantity = nil
      expect(prod).to_not be_valid
    end

    it "should not accept nil category" do
      prod.category = nil
      expect(prod).to_not be_valid
    end

  end
end
