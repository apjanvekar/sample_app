require 'test_helper'

class IndoorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indoors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indoor" do
    assert_difference('Indoor.count') do
      post :create, :indoor => { }
    end

    assert_redirected_to indoor_path(assigns(:indoor))
  end

  test "should show indoor" do
    get :show, :id => indoors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => indoors(:one).to_param
    assert_response :success
  end

  test "should update indoor" do
    put :update, :id => indoors(:one).to_param, :indoor => { }
    assert_redirected_to indoor_path(assigns(:indoor))
  end

  test "should destroy indoor" do
    assert_difference('Indoor.count', -1) do
      delete :destroy, :id => indoors(:one).to_param
    end

    assert_redirected_to indoors_path
  end
end
