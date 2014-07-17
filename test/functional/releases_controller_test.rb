require 'test_helper'

class ReleasesControllerTest < ActionController::TestCase
  setup do
    @release = releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release" do
    assert_difference('Release.count') do
      post :create, release: { Artist_ID: @release.Artist_ID, Base_ID: @release.Base_ID, Cat_No: @release.Cat_No, Collection_Type_ID: @release.Collection_Type_ID, Created: @release.Created, Created_Person_ID: @release.Created_Person_ID, Description: @release.Description, Edition_Comment: @release.Edition_Comment, Rating_ID: @release.Rating_ID, Release_Date: @release.Release_Date, Title: @release.Title, Updated: @release.Updated, Updated_Person_ID: @release.Updated_Person_ID }
    end

    assert_redirected_to release_path(assigns(:release))
  end

  test "should show release" do
    get :show, id: @release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @release
    assert_response :success
  end

  test "should update release" do
    put :update, id: @release, release: { Artist_ID: @release.Artist_ID, Base_ID: @release.Base_ID, Cat_No: @release.Cat_No, Collection_Type_ID: @release.Collection_Type_ID, Created: @release.Created, Created_Person_ID: @release.Created_Person_ID, Description: @release.Description, Edition_Comment: @release.Edition_Comment, Rating_ID: @release.Rating_ID, Release_Date: @release.Release_Date, Title: @release.Title, Updated: @release.Updated, Updated_Person_ID: @release.Updated_Person_ID }
    assert_redirected_to release_path(assigns(:release))
  end

  test "should destroy release" do
    assert_difference('Release.count', -1) do
      delete :destroy, id: @release
    end

    assert_redirected_to releases_path
  end
end
