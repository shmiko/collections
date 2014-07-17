class ReleaseLoan < ActiveRecord::Base
	belongs_to :people
  attr_accessible :Created, :Created_Person_ID, :Due_Back_Date, :Loan_Out_Date, :Person_From_ID, :Person_To_ID, :Release_ID, :Updated, :Updated_Person_ID
end
