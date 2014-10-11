require 'test_helper'

class ProyectsControllerTest < ActionController::TestCase
  setup do
    @proyect = proyects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proyects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proyect" do
    assert_difference('Proyect.count') do
      post :create, proyect: { brandName_id: @proyect.brandName_id, campaignName_id: @proyect.campaignName_id, country_id: @proyect.country_id, dateActivity_id: @proyect.dateActivity_id, endDateActivity_id: @proyect.endDateActivity_id, nameActivity_id: @proyect.nameActivity_id, nameEmployee_id: @proyect.nameEmployee_id, note_id: @proyect.note_id, totalActivity_id: @proyect.totalActivity_id, typeActivity_id: @proyect.typeActivity_id }
    end

    assert_redirected_to proyect_path(assigns(:proyect))
  end

  test "should show proyect" do
    get :show, id: @proyect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proyect
    assert_response :success
  end

  test "should update proyect" do
    patch :update, id: @proyect, proyect: { brandName_id: @proyect.brandName_id, campaignName_id: @proyect.campaignName_id, country_id: @proyect.country_id, dateActivity_id: @proyect.dateActivity_id, endDateActivity_id: @proyect.endDateActivity_id, nameActivity_id: @proyect.nameActivity_id, nameEmployee_id: @proyect.nameEmployee_id, note_id: @proyect.note_id, totalActivity_id: @proyect.totalActivity_id, typeActivity_id: @proyect.typeActivity_id }
    assert_redirected_to proyect_path(assigns(:proyect))
  end

  test "should destroy proyect" do
    assert_difference('Proyect.count', -1) do
      delete :destroy, id: @proyect
    end

    assert_redirected_to proyects_path
  end
end
