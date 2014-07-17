require 'test_helper'

class PicturesControllerTest < ActionController::TestCase
  setup do
    @picture = pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture" do
    assert_difference('Picture.count') do
      post :create, picture: { Back: @picture.Back, Back_Flap: @picture.Back_Flap, Created: @picture.Created, Created_Person_ID: @picture.Created_Person_ID, Front: @picture.Front, Front_Flap: @picture.Front_Flap, Inner_Page_1: @picture.Inner_Page_1, Inner_Page_2: @picture.Inner_Page_2, Inner_Page_3: @picture.Inner_Page_3, Inner_Page_4: @picture.Inner_Page_4, Release_ID: @picture.Release_ID, Updated: @picture.Updated, Updated_Person_ID: @picture.Updated_Person_ID }
    end

    assert_redirected_to picture_path(assigns(:picture))
  end

  test "should show picture" do
    get :show, id: @picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picture
    assert_response :success
  end

  test "should update picture" do
    put :update, id: @picture, picture: { Back: @picture.Back, Back_Flap: @picture.Back_Flap, Created: @picture.Created, Created_Person_ID: @picture.Created_Person_ID, Front: @picture.Front, Front_Flap: @picture.Front_Flap, Inner_Page_1: @picture.Inner_Page_1, Inner_Page_2: @picture.Inner_Page_2, Inner_Page_3: @picture.Inner_Page_3, Inner_Page_4: @picture.Inner_Page_4, Release_ID: @picture.Release_ID, Updated: @picture.Updated, Updated_Person_ID: @picture.Updated_Person_ID }
    assert_redirected_to picture_path(assigns(:picture))
  end

  test "should destroy picture" do
    assert_difference('Picture.count', -1) do
      delete :destroy, id: @picture
    end

    assert_redirected_to pictures_path
  end
end
