require 'test_helper'

class InformationTagsControllerTest < ActionController::TestCase
  setup do
    @information_tag = information_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:information_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create information_tag" do
    assert_difference('InformationTag.count') do
      post :create, information_tag: { Created: @information_tag.Created, Created_Person_ID: @information_tag.Created_Person_ID, Release_ID: @information_tag.Release_ID, Tags_ID: @information_tag.Tags_ID, Updated: @information_tag.Updated, Updated_Person_ID: @information_tag.Updated_Person_ID }
    end

    assert_redirected_to information_tag_path(assigns(:information_tag))
  end

  test "should show information_tag" do
    get :show, id: @information_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @information_tag
    assert_response :success
  end

  test "should update information_tag" do
    put :update, id: @information_tag, information_tag: { Created: @information_tag.Created, Created_Person_ID: @information_tag.Created_Person_ID, Release_ID: @information_tag.Release_ID, Tags_ID: @information_tag.Tags_ID, Updated: @information_tag.Updated, Updated_Person_ID: @information_tag.Updated_Person_ID }
    assert_redirected_to information_tag_path(assigns(:information_tag))
  end

  test "should destroy information_tag" do
    assert_difference('InformationTag.count', -1) do
      delete :destroy, id: @information_tag
    end

    assert_redirected_to information_tags_path
  end
end
