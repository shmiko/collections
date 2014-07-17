require 'test_helper'

class ReleaseLoansControllerTest < ActionController::TestCase
  setup do
    @release_loan = release_loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:release_loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release_loan" do
    assert_difference('ReleaseLoan.count') do
      post :create, release_loan: { Created: @release_loan.Created, Created_Person_ID: @release_loan.Created_Person_ID, Due_Back_Date: @release_loan.Due_Back_Date, Loan_Out_Date: @release_loan.Loan_Out_Date, Person_From_ID: @release_loan.Person_From_ID, Person_To_ID: @release_loan.Person_To_ID, Release_ID: @release_loan.Release_ID, Updated: @release_loan.Updated, Updated_Person_ID: @release_loan.Updated_Person_ID }
    end

    assert_redirected_to release_loan_path(assigns(:release_loan))
  end

  test "should show release_loan" do
    get :show, id: @release_loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @release_loan
    assert_response :success
  end

  test "should update release_loan" do
    put :update, id: @release_loan, release_loan: { Created: @release_loan.Created, Created_Person_ID: @release_loan.Created_Person_ID, Due_Back_Date: @release_loan.Due_Back_Date, Loan_Out_Date: @release_loan.Loan_Out_Date, Person_From_ID: @release_loan.Person_From_ID, Person_To_ID: @release_loan.Person_To_ID, Release_ID: @release_loan.Release_ID, Updated: @release_loan.Updated, Updated_Person_ID: @release_loan.Updated_Person_ID }
    assert_redirected_to release_loan_path(assigns(:release_loan))
  end

  test "should destroy release_loan" do
    assert_difference('ReleaseLoan.count', -1) do
      delete :destroy, id: @release_loan
    end

    assert_redirected_to release_loans_path
  end
end
