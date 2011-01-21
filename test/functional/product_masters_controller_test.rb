require 'test_helper'

class ProductMastersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_master" do
    assert_difference('ProductMaster.count') do
      post :create, :product_master => { }
    end

    assert_redirected_to product_master_path(assigns(:product_master))
  end

  test "should show product_master" do
    get :show, :id => product_masters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => product_masters(:one).to_param
    assert_response :success
  end

  test "should update product_master" do
    put :update, :id => product_masters(:one).to_param, :product_master => { }
    assert_redirected_to product_master_path(assigns(:product_master))
  end

  test "should destroy product_master" do
    assert_difference('ProductMaster.count', -1) do
      delete :destroy, :id => product_masters(:one).to_param
    end

    assert_redirected_to product_masters_path
  end
end
