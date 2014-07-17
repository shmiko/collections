require 'test_helper'

class TechnicalsControllerTest < ActionController::TestCase
  setup do
    @technical = technicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technical" do
    assert_difference('Technical.count') do
      post :create, technical: { Bitrate: @technical.Bitrate, Created: @technical.Created, Created_Person_ID: @technical.Created_Person_ID, Dimensions: @technical.Dimensions, External_References: @technical.External_References, ISBN10: @technical.ISBN10, ISBN13: @technical.ISBN13, Modified: @technical.Modified, No_of_Discs: @technical.No_of_Discs, Pages: @technical.Pages, Recording_Type_ID: @technical.Recording_Type_ID, Release_ID: @technical.Release_ID, Series: @technical.Series, Service: @technical.Service, Service_URL: @technical.Service_URL, Size: @technical.Size, Storage_Medium: @technical.Storage_Medium, Technical_Notes: @technical.Technical_Notes, Total_Runtime: @technical.Total_Runtime, Updated_Person_ID: @technical.Updated_Person_ID, Value_High: @technical.Value_High, Value_Low: @technical.Value_Low, Value_Med: @technical.Value_Med, Volume_Name: @technical.Volume_Name, Volume_nr: @technical.Volume_nr, Webpage: @technical.Webpage }
    end

    assert_redirected_to technical_path(assigns(:technical))
  end

  test "should show technical" do
    get :show, id: @technical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technical
    assert_response :success
  end

  test "should update technical" do
    put :update, id: @technical, technical: { Bitrate: @technical.Bitrate, Created: @technical.Created, Created_Person_ID: @technical.Created_Person_ID, Dimensions: @technical.Dimensions, External_References: @technical.External_References, ISBN10: @technical.ISBN10, ISBN13: @technical.ISBN13, Modified: @technical.Modified, No_of_Discs: @technical.No_of_Discs, Pages: @technical.Pages, Recording_Type_ID: @technical.Recording_Type_ID, Release_ID: @technical.Release_ID, Series: @technical.Series, Service: @technical.Service, Service_URL: @technical.Service_URL, Size: @technical.Size, Storage_Medium: @technical.Storage_Medium, Technical_Notes: @technical.Technical_Notes, Total_Runtime: @technical.Total_Runtime, Updated_Person_ID: @technical.Updated_Person_ID, Value_High: @technical.Value_High, Value_Low: @technical.Value_Low, Value_Med: @technical.Value_Med, Volume_Name: @technical.Volume_Name, Volume_nr: @technical.Volume_nr, Webpage: @technical.Webpage }
    assert_redirected_to technical_path(assigns(:technical))
  end

  test "should destroy technical" do
    assert_difference('Technical.count', -1) do
      delete :destroy, id: @technical
    end

    assert_redirected_to technicals_path
  end
end
