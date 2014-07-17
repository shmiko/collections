require 'test_helper'

class InformationControllerTest < ActionController::TestCase
  setup do
    @information = information(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:information)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create information" do
    assert_difference('Information.count') do
      post :create, information: { Binding_ID: @information.Binding_ID, Category_ID: @information.Category_ID, Condition_ID: @information.Condition_ID, Container: @information.Container, Country_ID: @information.Country_ID, Created: @information.Created, Created_Person_ID: @information.Created_Person_ID, Edition_Type_ID: @information.Edition_Type_ID, Format_ID: @information.Format_ID, Genre_ID: @information.Genre_ID, Notes: @information.Notes, Publisher_ID: @information.Publisher_ID, Release_ID: @information.Release_ID, State: @information.State, Sub_Type_ID: @information.Sub_Type_ID, Type_ID: @information.Type_ID, Updated: @information.Updated, Updated_Person_ID: @information.Updated_Person_ID }
    end

    assert_redirected_to information_path(assigns(:information))
  end

  test "should show information" do
    get :show, id: @information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @information
    assert_response :success
  end

  test "should update information" do
    put :update, id: @information, information: { Binding_ID: @information.Binding_ID, Category_ID: @information.Category_ID, Condition_ID: @information.Condition_ID, Container: @information.Container, Country_ID: @information.Country_ID, Created: @information.Created, Created_Person_ID: @information.Created_Person_ID, Edition_Type_ID: @information.Edition_Type_ID, Format_ID: @information.Format_ID, Genre_ID: @information.Genre_ID, Notes: @information.Notes, Publisher_ID: @information.Publisher_ID, Release_ID: @information.Release_ID, State: @information.State, Sub_Type_ID: @information.Sub_Type_ID, Type_ID: @information.Type_ID, Updated: @information.Updated, Updated_Person_ID: @information.Updated_Person_ID }
    assert_redirected_to information_path(assigns(:information))
  end

  test "should destroy information" do
    assert_difference('Information.count', -1) do
      delete :destroy, id: @information
    end

    assert_redirected_to information_index_path
  end
end
