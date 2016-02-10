require 'test_helper'

class KoransControllerTest < ActionController::TestCase
  setup do
    @koran = korans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:korans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create koran" do
    assert_difference('Koran.count') do
      post :create, koran: {  }
    end

    assert_redirected_to koran_path(assigns(:koran))
  end

  test "should show koran" do
    get :show, id: @koran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @koran
    assert_response :success
  end

  test "should update koran" do
    patch :update, id: @koran, koran: {  }
    assert_redirected_to koran_path(assigns(:koran))
  end

  test "should destroy koran" do
    assert_difference('Koran.count', -1) do
      delete :destroy, id: @koran
    end

    assert_redirected_to korans_path
  end
end
