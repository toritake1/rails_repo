require 'test_helper'

class IdollistsControllerTest < ActionController::TestCase
  setup do
    @idollist = idollists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idollists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idollist" do
    assert_difference('Idollist.count') do
      post :create, idollist: {  }
    end

    assert_redirected_to idollist_path(assigns(:idollist))
  end

  test "should show idollist" do
    get :show, id: @idollist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idollist
    assert_response :success
  end

  test "should update idollist" do
    patch :update, id: @idollist, idollist: {  }
    assert_redirected_to idollist_path(assigns(:idollist))
  end

  test "should destroy idollist" do
    assert_difference('Idollist.count', -1) do
      delete :destroy, id: @idollist
    end

    assert_redirected_to idollists_path
  end
end
