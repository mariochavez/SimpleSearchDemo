require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post :create, :search => @search.attributes
    end

    assert_redirected_to search_path(assigns(:search))
  end

  test "should show search" do
    get :show, :id => @search.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @search.to_param
    assert_response :success
  end

  test "should update search" do
    put :update, :id => @search.to_param, :search => @search.attributes
    assert_redirected_to search_path(assigns(:search))
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete :destroy, :id => @search.to_param
    end

    assert_redirected_to searches_path
  end
end
