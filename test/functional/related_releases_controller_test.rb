require 'test_helper'

class RelatedReleasesControllerTest < ActionController::TestCase
  setup do
    @related_release = related_releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:related_releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create related_release" do
    assert_difference('RelatedRelease.count') do
      post :create, related_release: { Created: @related_release.Created, Created_Person_ID: @related_release.Created_Person_ID, Related_From_Release_ID: @related_release.Related_From_Release_ID, Related_To_Release_ID: @related_release.Related_To_Release_ID, Updated: @related_release.Updated, Updated_Person_ID: @related_release.Updated_Person_ID }
    end

    assert_redirected_to related_release_path(assigns(:related_release))
  end

  test "should show related_release" do
    get :show, id: @related_release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @related_release
    assert_response :success
  end

  test "should update related_release" do
    put :update, id: @related_release, related_release: { Created: @related_release.Created, Created_Person_ID: @related_release.Created_Person_ID, Related_From_Release_ID: @related_release.Related_From_Release_ID, Related_To_Release_ID: @related_release.Related_To_Release_ID, Updated: @related_release.Updated, Updated_Person_ID: @related_release.Updated_Person_ID }
    assert_redirected_to related_release_path(assigns(:related_release))
  end

  test "should destroy related_release" do
    assert_difference('RelatedRelease.count', -1) do
      delete :destroy, id: @related_release
    end

    assert_redirected_to related_releases_path
  end
end
