require 'test_helper'

class BasesControllerTest < ActionController::TestCase
  setup do
    @basis = bases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basis" do
    assert_difference('Base.count') do
      post :create, basis: { Created: @basis.Created, Created_Person_ID: @basis.Created_Person_ID, Description: @basis.Description, Updated: @basis.Updated, Updated_Person_ID: @basis.Updated_Person_ID }
    end

    assert_redirected_to basis_path(assigns(:basis))
  end

  test "should show basis" do
    get :show, id: @basis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basis
    assert_response :success
  end

  test "should update basis" do
    put :update, id: @basis, basis: { Created: @basis.Created, Created_Person_ID: @basis.Created_Person_ID, Description: @basis.Description, Updated: @basis.Updated, Updated_Person_ID: @basis.Updated_Person_ID }
    assert_redirected_to basis_path(assigns(:basis))
  end

  test "should destroy basis" do
    assert_difference('Base.count', -1) do
      delete :destroy, id: @basis
    end

    assert_redirected_to bases_path
  end
end
