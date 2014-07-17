require 'test_helper'

class ArtistPeopleControllerTest < ActionController::TestCase
  setup do
    @artist_person = artist_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_person" do
    assert_difference('ArtistPerson.count') do
      post :create, artist_person: { Artist_ID: @artist_person.Artist_ID, Created: @artist_person.Created, Created_Person_ID: @artist_person.Created_Person_ID, Enter_Date: @artist_person.Enter_Date, Leave_Date: @artist_person.Leave_Date, Persons_ID: @artist_person.Persons_ID, Updated: @artist_person.Updated, Updated_Person_ID: @artist_person.Updated_Person_ID }
    end

    assert_redirected_to artist_person_path(assigns(:artist_person))
  end

  test "should show artist_person" do
    get :show, id: @artist_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_person
    assert_response :success
  end

  test "should update artist_person" do
    put :update, id: @artist_person, artist_person: { Artist_ID: @artist_person.Artist_ID, Created: @artist_person.Created, Created_Person_ID: @artist_person.Created_Person_ID, Enter_Date: @artist_person.Enter_Date, Leave_Date: @artist_person.Leave_Date, Persons_ID: @artist_person.Persons_ID, Updated: @artist_person.Updated, Updated_Person_ID: @artist_person.Updated_Person_ID }
    assert_redirected_to artist_person_path(assigns(:artist_person))
  end

  test "should destroy artist_person" do
    assert_difference('ArtistPerson.count', -1) do
      delete :destroy, id: @artist_person
    end

    assert_redirected_to artist_people_path
  end
end
