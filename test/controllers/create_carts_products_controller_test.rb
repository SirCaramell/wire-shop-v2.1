require 'test_helper'

class CreateCartsProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_carts_product = create_carts_products(:one)
  end

  test "should get index" do
    get create_carts_products_url
    assert_response :success
  end

  test "should get new" do
    get new_create_carts_product_url
    assert_response :success
  end

  test "should create create_carts_product" do
    assert_difference('CreateCartsProduct.count') do
      post create_carts_products_url, params: { create_carts_product: { quantity: @create_carts_product.quantity } }
    end

    assert_redirected_to create_carts_product_url(CreateCartsProduct.last)
  end

  test "should show create_carts_product" do
    get create_carts_product_url(@create_carts_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_carts_product_url(@create_carts_product)
    assert_response :success
  end

  test "should update create_carts_product" do
    patch create_carts_product_url(@create_carts_product), params: { create_carts_product: { quantity: @create_carts_product.quantity } }
    assert_redirected_to create_carts_product_url(@create_carts_product)
  end

  test "should destroy create_carts_product" do
    assert_difference('CreateCartsProduct.count', -1) do
      delete create_carts_product_url(@create_carts_product)
    end

    assert_redirected_to create_carts_products_url
  end
end
