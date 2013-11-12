require 'test_helper'

class InfoProductsControllerTest < ActionController::TestCase
  setup do
    @info_product = info_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_product" do
    assert_difference('InfoProduct.count') do
      post :create, info_product: { description: @info_product.description, image_id: @info_product.image_id, price: @info_product.price, title: @info_product.title }
    end

    assert_redirected_to info_product_path(assigns(:info_product))
  end

  test "should show info_product" do
    get :show, id: @info_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_product
    assert_response :success
  end

  test "should update info_product" do
    patch :update, id: @info_product, info_product: { description: @info_product.description, image_id: @info_product.image_id, price: @info_product.price, title: @info_product.title }
    assert_redirected_to info_product_path(assigns(:info_product))
  end

  test "should destroy info_product" do
    assert_difference('InfoProduct.count', -1) do
      delete :destroy, id: @info_product
    end

    assert_redirected_to info_products_path
  end
end
