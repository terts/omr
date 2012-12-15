require 'test_helper'

class WineListsControllerTest < ActionController::TestCase
  setup do
    @wine_list = wine_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wine_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wine_list" do
    assert_difference('WineList.count') do
      post :create, wine_list: @wine_list.attributes
    end

    assert_redirected_to wine_list_path(assigns(:wine_list))
  end

  test "should show wine_list" do
    get :show, id: @wine_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wine_list
    assert_response :success
  end

  test "should update wine_list" do
    put :update, id: @wine_list, wine_list: @wine_list.attributes
    assert_redirected_to wine_list_path(assigns(:wine_list))
  end

  test "should destroy wine_list" do
    assert_difference('WineList.count', -1) do
      delete :destroy, id: @wine_list
    end

    assert_redirected_to wine_lists_path
  end
end
