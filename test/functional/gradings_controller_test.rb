require 'test_helper'

class GradingsControllerTest < ActionController::TestCase
  setup do
    @grading = gradings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gradings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grading" do
    assert_difference('Grading.count') do
      post :create, grading: { Created: @grading.Created, Created_Person_ID: @grading.Created_Person_ID, Description: @grading.Description, Grading: @grading.Grading, Updated: @grading.Updated, Updated_Person_ID: @grading.Updated_Person_ID }
    end

    assert_redirected_to grading_path(assigns(:grading))
  end

  test "should show grading" do
    get :show, id: @grading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grading
    assert_response :success
  end

  test "should update grading" do
    put :update, id: @grading, grading: { Created: @grading.Created, Created_Person_ID: @grading.Created_Person_ID, Description: @grading.Description, Grading: @grading.Grading, Updated: @grading.Updated, Updated_Person_ID: @grading.Updated_Person_ID }
    assert_redirected_to grading_path(assigns(:grading))
  end

  test "should destroy grading" do
    assert_difference('Grading.count', -1) do
      delete :destroy, id: @grading
    end

    assert_redirected_to gradings_path
  end
end
