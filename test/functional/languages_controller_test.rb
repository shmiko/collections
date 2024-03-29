require 'test_helper'

class LanguagesControllerTest < ActionController::TestCase
  setup do
    @language = languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language" do
    assert_difference('Language.count') do
      post :create, language: { Created: @language.Created, Created_Person_ID: @language.Created_Person_ID, Description: @language.Description, Updated: @language.Updated, Updated_Person_ID: @language.Updated_Person_ID }
    end

    assert_redirected_to language_path(assigns(:language))
  end

  test "should show language" do
    get :show, id: @language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language
    assert_response :success
  end

  test "should update language" do
    put :update, id: @language, language: { Created: @language.Created, Created_Person_ID: @language.Created_Person_ID, Description: @language.Description, Updated: @language.Updated, Updated_Person_ID: @language.Updated_Person_ID }
    assert_redirected_to language_path(assigns(:language))
  end

  test "should destroy language" do
    assert_difference('Language.count', -1) do
      delete :destroy, id: @language
    end

    assert_redirected_to languages_path
  end
end
