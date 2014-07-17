require 'test_helper'

class PersonsReleasesControllerTest < ActionController::TestCase
  setup do
    @persons_release = persons_releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persons_releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persons_release" do
    assert_difference('PersonsRelease.count') do
      post :create, persons_release: { Audio_Type_ID: @persons_release.Audio_Type_ID, Bitrate: @persons_release.Bitrate, Created: @persons_release.Created, Created_Person_ID: @persons_release.Created_Person_ID, Dimensions: @persons_release.Dimensions, Filehash: @persons_release.Filehash, Filehash_type: @persons_release.Filehash_type, Filesize: @persons_release.Filesize, No_Of_Copies: @persons_release.No_Of_Copies, Own: @persons_release.Own, Persons_ID: @persons_release.Persons_ID, Release_ID: @persons_release.Release_ID, Size: @persons_release.Size, Updated: @persons_release.Updated, Updated_Person_ID: @persons_release.Updated_Person_ID, Want: @persons_release.Want }
    end

    assert_redirected_to persons_release_path(assigns(:persons_release))
  end

  test "should show persons_release" do
    get :show, id: @persons_release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persons_release
    assert_response :success
  end

  test "should update persons_release" do
    put :update, id: @persons_release, persons_release: { Audio_Type_ID: @persons_release.Audio_Type_ID, Bitrate: @persons_release.Bitrate, Created: @persons_release.Created, Created_Person_ID: @persons_release.Created_Person_ID, Dimensions: @persons_release.Dimensions, Filehash: @persons_release.Filehash, Filehash_type: @persons_release.Filehash_type, Filesize: @persons_release.Filesize, No_Of_Copies: @persons_release.No_Of_Copies, Own: @persons_release.Own, Persons_ID: @persons_release.Persons_ID, Release_ID: @persons_release.Release_ID, Size: @persons_release.Size, Updated: @persons_release.Updated, Updated_Person_ID: @persons_release.Updated_Person_ID, Want: @persons_release.Want }
    assert_redirected_to persons_release_path(assigns(:persons_release))
  end

  test "should destroy persons_release" do
    assert_difference('PersonsRelease.count', -1) do
      delete :destroy, id: @persons_release
    end

    assert_redirected_to persons_releases_path
  end
end
