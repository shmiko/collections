require 'test_helper'

class CategoryTypesControllerTest < ActionController::TestCase
  setup do
    @category_type = category_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_type" do
    assert_difference('CategoryType.count') do
      post :create, category_type: { Category_Type_Collection_Type_ID: @category_type.Category_Type_Collection_Type_ID, Created: @category_type.Created, Created_Person_ID: @category_type.Created_Person_ID, Description: @category_type.Description, Updated: @category_type.Updated, Updated_Person_ID: @category_type.Updated_Person_ID }
    end

    assert_redirected_to category_type_path(assigns(:category_type))
  end

  test "should show category_type" do
    get :show, id: @category_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_type
    assert_response :success
  end

  test "should update category_type" do
    put :update, id: @category_type, category_type: { Category_Type_Collection_Type_ID: @category_type.Category_Type_Collection_Type_ID, Created: @category_type.Created, Created_Person_ID: @category_type.Created_Person_ID, Description: @category_type.Description, Updated: @category_type.Updated, Updated_Person_ID: @category_type.Updated_Person_ID }
    assert_redirected_to category_type_path(assigns(:category_type))
  end

  test "should destroy category_type" do
    assert_difference('CategoryType.count', -1) do
      delete :destroy, id: @category_type
    end

    assert_redirected_to category_types_path
  end
end
