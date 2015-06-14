require 'test_helper'

class BodyParametersControllerTest < ActionController::TestCase
  setup do
    @body_parameter = body_parameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:body_parameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create body_parameter" do
    assert_difference('BodyParameter.count') do
      post :create, body_parameter: { height: @body_parameter.height, user_id: @body_parameter.user_id, weight: @body_parameter.weight }
    end

    assert_redirected_to body_parameter_path(assigns(:body_parameter))
  end

  test "should show body_parameter" do
    get :show, id: @body_parameter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @body_parameter
    assert_response :success
  end

  test "should update body_parameter" do
    patch :update, id: @body_parameter, body_parameter: { height: @body_parameter.height, user_id: @body_parameter.user_id, weight: @body_parameter.weight }
    assert_redirected_to body_parameter_path(assigns(:body_parameter))
  end

  test "should destroy body_parameter" do
    assert_difference('BodyParameter.count', -1) do
      delete :destroy, id: @body_parameter
    end

    assert_redirected_to body_parameters_path
  end
end
