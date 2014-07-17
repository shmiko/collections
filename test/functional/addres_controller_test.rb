require 'test_helper'

class AddresControllerTest < ActionController::TestCase
  setup do
    @addre = addres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addre" do
    assert_difference('Addre.count') do
      post :create, addre: { Country_ID: @addre.Country_ID, Created: @addre.Created, Created_Person_ID: @addre.Created_Person_ID, Street: @addre.Street, Suburb: @addre.Suburb, Updated: @addre.Updated, Updated_Person_ID: @addre.Updated_Person_ID }
    end

    assert_redirected_to addre_path(assigns(:addre))
  end

  test "should show addre" do
    get :show, id: @addre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addre
    assert_response :success
  end

  test "should update addre" do
    put :update, id: @addre, addre: { Country_ID: @addre.Country_ID, Created: @addre.Created, Created_Person_ID: @addre.Created_Person_ID, Street: @addre.Street, Suburb: @addre.Suburb, Updated: @addre.Updated, Updated_Person_ID: @addre.Updated_Person_ID }
    assert_redirected_to addre_path(assigns(:addre))
  end

  test "should destroy addre" do
    assert_difference('Addre.count', -1) do
      delete :destroy, id: @addre
    end

    assert_redirected_to addres_path
  end
end
