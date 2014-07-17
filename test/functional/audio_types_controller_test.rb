require 'test_helper'

class AudioTypesControllerTest < ActionController::TestCase
  setup do
    @audio_type = audio_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audio_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audio_type" do
    assert_difference('AudioType.count') do
      post :create, audio_type: { Created: @audio_type.Created, Created_Person_ID: @audio_type.Created_Person_ID, Description: @audio_type.Description, Updated: @audio_type.Updated, Updated_Person_ID: @audio_type.Updated_Person_ID }
    end

    assert_redirected_to audio_type_path(assigns(:audio_type))
  end

  test "should show audio_type" do
    get :show, id: @audio_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audio_type
    assert_response :success
  end

  test "should update audio_type" do
    put :update, id: @audio_type, audio_type: { Created: @audio_type.Created, Created_Person_ID: @audio_type.Created_Person_ID, Description: @audio_type.Description, Updated: @audio_type.Updated, Updated_Person_ID: @audio_type.Updated_Person_ID }
    assert_redirected_to audio_type_path(assigns(:audio_type))
  end

  test "should destroy audio_type" do
    assert_difference('AudioType.count', -1) do
      delete :destroy, id: @audio_type
    end

    assert_redirected_to audio_types_path
  end
end
