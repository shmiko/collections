require 'test_helper'

class BindsControllerTest < ActionController::TestCase
  setup do
    @bind = binds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:binds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bind" do
    assert_difference('Bind.count') do
      post :create, bind: { Created: @bind.Created, Created_Person_ID: @bind.Created_Person_ID, Description: @bind.Description, Updated: @bind.Updated, Updated_Person_ID: @bind.Updated_Person_ID }
    end

    assert_redirected_to bind_path(assigns(:bind))
  end

  test "should show bind" do
    get :show, id: @bind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bind
    assert_response :success
  end

  test "should update bind" do
    put :update, id: @bind, bind: { Created: @bind.Created, Created_Person_ID: @bind.Created_Person_ID, Description: @bind.Description, Updated: @bind.Updated, Updated_Person_ID: @bind.Updated_Person_ID }
    assert_redirected_to bind_path(assigns(:bind))
  end

  test "should destroy bind" do
    assert_difference('Bind.count', -1) do
      delete :destroy, id: @bind
    end

    assert_redirected_to binds_path
  end
end
