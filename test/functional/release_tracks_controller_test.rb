require 'test_helper'

class ReleaseTracksControllerTest < ActionController::TestCase
  setup do
    @release_track = release_tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:release_tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release_track" do
    assert_difference('ReleaseTrack.count') do
      post :create, release_track: { Created: @release_track.Created, Created_Person_ID: @release_track.Created_Person_ID, Release_ID: @release_track.Release_ID, Tracks_ID: @release_track.Tracks_ID, Updated: @release_track.Updated, Updated_Person_ID: @release_track.Updated_Person_ID }
    end

    assert_redirected_to release_track_path(assigns(:release_track))
  end

  test "should show release_track" do
    get :show, id: @release_track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @release_track
    assert_response :success
  end

  test "should update release_track" do
    put :update, id: @release_track, release_track: { Created: @release_track.Created, Created_Person_ID: @release_track.Created_Person_ID, Release_ID: @release_track.Release_ID, Tracks_ID: @release_track.Tracks_ID, Updated: @release_track.Updated, Updated_Person_ID: @release_track.Updated_Person_ID }
    assert_redirected_to release_track_path(assigns(:release_track))
  end

  test "should destroy release_track" do
    assert_difference('ReleaseTrack.count', -1) do
      delete :destroy, id: @release_track
    end

    assert_redirected_to release_tracks_path
  end
end
