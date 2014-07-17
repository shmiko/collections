require 'test_helper'

class EditionTypesControllerTest < ActionController::TestCase
  setup do
    @edition_type = edition_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edition_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edition_type" do
    assert_difference('EditionType.count') do
      post :create, edition_type: { Created: @edition_type.Created, Created_Person_ID: @edition_type.Created_Person_ID, Description: @edition_type.Description, Updated: @edition_type.Updated, Updated_Person_ID: @edition_type.Updated_Person_ID }
    end

    assert_redirected_to edition_type_path(assigns(:edition_type))
  end

  test "should show edition_type" do
    get :show, id: @edition_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edition_type
    assert_response :success
  end

  test "should update edition_type" do
    put :update, id: @edition_type, edition_type: { Created: @edition_type.Created, Created_Person_ID: @edition_type.Created_Person_ID, Description: @edition_type.Description, Updated: @edition_type.Updated, Updated_Person_ID: @edition_type.Updated_Person_ID }
    assert_redirected_to edition_type_path(assigns(:edition_type))
  end

  test "should destroy edition_type" do
    assert_difference('EditionType.count', -1) do
      delete :destroy, id: @edition_type
    end

    assert_redirected_to edition_types_path
  end
end
