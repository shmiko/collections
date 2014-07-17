require 'test_helper'

class ConditionsControllerTest < ActionController::TestCase
  setup do
    @condition = conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condition" do
    assert_difference('Condition.count') do
      post :create, condition: { Created: @condition.Created, Created_Person_ID: @condition.Created_Person_ID, Description: @condition.Description, Updated: @condition.Updated, Updated_Person_ID: @condition.Updated_Person_ID }
    end

    assert_redirected_to condition_path(assigns(:condition))
  end

  test "should show condition" do
    get :show, id: @condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condition
    assert_response :success
  end

  test "should update condition" do
    put :update, id: @condition, condition: { Created: @condition.Created, Created_Person_ID: @condition.Created_Person_ID, Description: @condition.Description, Updated: @condition.Updated, Updated_Person_ID: @condition.Updated_Person_ID }
    assert_redirected_to condition_path(assigns(:condition))
  end

  test "should destroy condition" do
    assert_difference('Condition.count', -1) do
      delete :destroy, id: @condition
    end

    assert_redirected_to conditions_path
  end
end
