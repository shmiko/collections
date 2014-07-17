require 'test_helper'

class RecordingTypesControllerTest < ActionController::TestCase
  setup do
    @recording_type = recording_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recording_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recording_type" do
    assert_difference('RecordingType.count') do
      post :create, recording_type: { Created: @recording_type.Created, Created_Person_ID: @recording_type.Created_Person_ID, Description: @recording_type.Description, Updated: @recording_type.Updated, Updated_Person_ID: @recording_type.Updated_Person_ID }
    end

    assert_redirected_to recording_type_path(assigns(:recording_type))
  end

  test "should show recording_type" do
    get :show, id: @recording_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recording_type
    assert_response :success
  end

  test "should update recording_type" do
    put :update, id: @recording_type, recording_type: { Created: @recording_type.Created, Created_Person_ID: @recording_type.Created_Person_ID, Description: @recording_type.Description, Updated: @recording_type.Updated, Updated_Person_ID: @recording_type.Updated_Person_ID }
    assert_redirected_to recording_type_path(assigns(:recording_type))
  end

  test "should destroy recording_type" do
    assert_difference('RecordingType.count', -1) do
      delete :destroy, id: @recording_type
    end

    assert_redirected_to recording_types_path
  end
end
