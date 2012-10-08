require 'test_helper'

class ConvitesControllerTest < ActionController::TestCase
  setup do
    @convite = convites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convite" do
    assert_difference('Convite.count') do
      post :create, :convite => @convite.attributes
    end

    assert_redirected_to convite_path(assigns(:convite))
  end

  test "should show convite" do
    get :show, :id => @convite.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @convite.to_param
    assert_response :success
  end

  test "should update convite" do
    put :update, :id => @convite.to_param, :convite => @convite.attributes
    assert_redirected_to convite_path(assigns(:convite))
  end

  test "should destroy convite" do
    assert_difference('Convite.count', -1) do
      delete :destroy, :id => @convite.to_param
    end

    assert_redirected_to convites_path
  end
end
