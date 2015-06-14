require 'test_helper'

class RationsControllerTest < ActionController::TestCase
  setup do
    @ration = rations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ration" do
    assert_difference('Ration.count') do
      post :create, ration: { calories: @ration.calories, carbohydrates: @ration.carbohydrates, fats: @ration.fats, proteins: @ration.proteins, user_id: @ration.user_id }
    end

    assert_redirected_to ration_path(assigns(:ration))
  end

  test "should show ration" do
    get :show, id: @ration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ration
    assert_response :success
  end

  test "should update ration" do
    patch :update, id: @ration, ration: { calories: @ration.calories, carbohydrates: @ration.carbohydrates, fats: @ration.fats, proteins: @ration.proteins, user_id: @ration.user_id }
    assert_redirected_to ration_path(assigns(:ration))
  end

  test "should destroy ration" do
    assert_difference('Ration.count', -1) do
      delete :destroy, id: @ration
    end

    assert_redirected_to rations_path
  end
end
