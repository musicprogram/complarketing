require 'test_helper'

class UensControllerTest < ActionController::TestCase
  setup do
    @uen = uens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uen" do
    assert_difference('Uen.count') do
      post :create, uen: { country: @uen.country, region: @uen.region }
    end

    assert_redirected_to uen_path(assigns(:uen))
  end

  test "should show uen" do
    get :show, id: @uen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uen
    assert_response :success
  end

  test "should update uen" do
    patch :update, id: @uen, uen: { country: @uen.country, region: @uen.region }
    assert_redirected_to uen_path(assigns(:uen))
  end

  test "should destroy uen" do
    assert_difference('Uen.count', -1) do
      delete :destroy, id: @uen
    end

    assert_redirected_to uens_path
  end
end
