require 'test_helper'

class ArtistTypesControllerTest < ActionController::TestCase
  setup do
    @artist_type = artist_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_type" do
    assert_difference('ArtistType.count') do
      post :create, artist_type: { Created: @artist_type.Created, Created_Person_ID: @artist_type.Created_Person_ID, Description: @artist_type.Description, Updated: @artist_type.Updated, Updated_Person_ID: @artist_type.Updated_Person_ID }
    end

    assert_redirected_to artist_type_path(assigns(:artist_type))
  end

  test "should show artist_type" do
    get :show, id: @artist_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_type
    assert_response :success
  end

  test "should update artist_type" do
    put :update, id: @artist_type, artist_type: { Created: @artist_type.Created, Created_Person_ID: @artist_type.Created_Person_ID, Description: @artist_type.Description, Updated: @artist_type.Updated, Updated_Person_ID: @artist_type.Updated_Person_ID }
    assert_redirected_to artist_type_path(assigns(:artist_type))
  end

  test "should destroy artist_type" do
    assert_difference('ArtistType.count', -1) do
      delete :destroy, id: @artist_type
    end

    assert_redirected_to artist_types_path
  end
end
