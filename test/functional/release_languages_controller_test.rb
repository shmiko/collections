require 'test_helper'

class ReleaseLanguagesControllerTest < ActionController::TestCase
  setup do
    @release_language = release_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:release_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release_language" do
    assert_difference('ReleaseLanguage.count') do
      post :create, release_language: { Created: @release_language.Created, Created_Person_ID: @release_language.Created_Person_ID, Language_ID: @release_language.Language_ID, Release_ID: @release_language.Release_ID, Updated: @release_language.Updated, Updated_Person_ID: @release_language.Updated_Person_ID }
    end

    assert_redirected_to release_language_path(assigns(:release_language))
  end

  test "should show release_language" do
    get :show, id: @release_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @release_language
    assert_response :success
  end

  test "should update release_language" do
    put :update, id: @release_language, release_language: { Created: @release_language.Created, Created_Person_ID: @release_language.Created_Person_ID, Language_ID: @release_language.Language_ID, Release_ID: @release_language.Release_ID, Updated: @release_language.Updated, Updated_Person_ID: @release_language.Updated_Person_ID }
    assert_redirected_to release_language_path(assigns(:release_language))
  end

  test "should destroy release_language" do
    assert_difference('ReleaseLanguage.count', -1) do
      delete :destroy, id: @release_language
    end

    assert_redirected_to release_languages_path
  end
end
