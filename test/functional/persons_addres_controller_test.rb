require 'test_helper'

class PersonsAddresControllerTest < ActionController::TestCase
  setup do
    @persons_addre = persons_addres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persons_addres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persons_addre" do
    assert_difference('PersonsAddre.count') do
      post :create, persons_addre: { Address_ID: @persons_addre.Address_ID, Created: @persons_addre.Created, Created_Person_ID: @persons_addre.Created_Person_ID, Persons_ID: @persons_addre.Persons_ID, Updated: @persons_addre.Updated, Updated_Person_ID: @persons_addre.Updated_Person_ID }
    end

    assert_redirected_to persons_addre_path(assigns(:persons_addre))
  end

  test "should show persons_addre" do
    get :show, id: @persons_addre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persons_addre
    assert_response :success
  end

  test "should update persons_addre" do
    put :update, id: @persons_addre, persons_addre: { Address_ID: @persons_addre.Address_ID, Created: @persons_addre.Created, Created_Person_ID: @persons_addre.Created_Person_ID, Persons_ID: @persons_addre.Persons_ID, Updated: @persons_addre.Updated, Updated_Person_ID: @persons_addre.Updated_Person_ID }
    assert_redirected_to persons_addre_path(assigns(:persons_addre))
  end

  test "should destroy persons_addre" do
    assert_difference('PersonsAddre.count', -1) do
      delete :destroy, id: @persons_addre
    end

    assert_redirected_to persons_addres_path
  end
end
