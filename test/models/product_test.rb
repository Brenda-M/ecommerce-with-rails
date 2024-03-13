require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "should not save product without title" do
    product = products(:product1)
    product.title = nil
    assert_not product.save, "Saved the product without a title"
  end

  test "should not save product without description" do
    product = products(:product1)
    product.description = nil
    assert_not product.save, "Saved the product without a description"
  end

  test "should not save product without image_url" do
    product = products(:product1)
    product.image_url = nil
    assert_not product.save, "Saved the product without an image_url"
  end

  test "should not save product with non-numeric price" do
    product = products(:product1)
    product.price = 'abc'
    assert_not product.save, "Saved the product with a non-numeric price"
  end

  test "should not save product with negative price" do
    product = products(:product1)
    product.price = -9.99
    assert_not product.save, "Saved the product with a negative price"
  end

  test "should not save product without price" do
    product = products(:product1)
    product.price = nil
    assert_not product.save, "Saved the product without a price"
  end

  test "should save product with valid attributes" do
    product = products(:product1)
    assert product.save, "Failed to save the product with valid attributes"
  end
end
