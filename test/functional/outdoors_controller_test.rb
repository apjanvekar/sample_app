require 'test_helper'

class OutdoorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outdoors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outdoor" do
    assert_difference('Outdoor.count') do
      post :create, :outdoor => { }
    end

    assert_redirected_to outdoor_path(assigns(:outdoor))
  end

  test "should show outdoor" do
    get :show, :id => outdoors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => outdoors(:one).to_param
    assert_response :success
  end

  test "should update outdoor" do
    put :update, :id => outdoors(:one).to_param, :outdoor => { }
    assert_redirected_to outdoor_path(assigns(:outdoor))
  end

  test "should destroy outdoor" do
    assert_difference('Outdoor.count', -1) do
      delete :destroy, :id => outdoors(:one).to_param
    end

    assert_redirected_to outdoors_path
  end
end
