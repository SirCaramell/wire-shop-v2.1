require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { brutto_price: @product.brutto_price, category: @product.category, ean: @product.ean, image: @product.image, netto_price: @product.netto_price, product_id: @product.product_id, product_name: @product.product_name, quantity_in_stock: @product.quantity_in_stock, text_description: @product.text_description } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { brutto_price: @product.brutto_price, category: @product.category, ean: @product.ean, image: @product.image, netto_price: @product.netto_price, product_id: @product.product_id, product_name: @product.product_name, quantity_in_stock: @product.quantity_in_stock, text_description: @product.text_description } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
