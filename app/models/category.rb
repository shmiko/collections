class Category < ActiveRecord::Base
	has_many :information
	belongs_to :people
	attr_accessible :Category_Release_ID, :Category_Type_ID, :Created, :Created_Person_ID, :Updated, :Updated_Person_ID
end
