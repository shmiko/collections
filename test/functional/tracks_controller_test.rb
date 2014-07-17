require 'test_helper'

class TracksControllerTest < ActionController::TestCase
  setup do
    @track = tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create track" do
    assert_difference('Track.count') do
      post :create, track: { Base_ID: @track.Base_ID, Created: @track.Created, Created_Person_ID: @track.Created_Person_ID, Length: @track.Length, Title: @track.Title, Updated: @track.Updated, Updated_Person_ID: @track.Updated_Person_ID }
    end

    assert_redirected_to track_path(assigns(:track))
  end

  test "should show track" do
    get :show, id: @track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @track
    assert_response :success
  end

  test "should update track" do
    put :update, id: @track, track: { Base_ID: @track.Base_ID, Created: @track.Created, Created_Person_ID: @track.Created_Person_ID, Length: @track.Length, Title: @track.Title, Updated: @track.Updated, Updated_Person_ID: @track.Updated_Person_ID }
    assert_redirected_to track_path(assigns(:track))
  end

  test "should destroy track" do
    assert_difference('Track.count', -1) do
      delete :destroy, id: @track
    end

    assert_redirected_to tracks_path
  end
end
