class Information < ActiveRecord::Base
	has_one :release
	belongs_to :binding
	belongs_to :category
	belongs_to :people
	
	attr_accessible :Binding_ID, :Category_ID, :Condition_ID, :Container, :Country_ID, :Created, :Created_Person_ID, :Edition_Type_ID, :Format_ID, :Genre_ID, :Notes, :Publisher_ID, :Release_ID, :State, :Sub_Type_ID, :Type_ID, :Updated, :Updated_Person_ID
end
