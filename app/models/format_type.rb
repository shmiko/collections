class FormatType < ActiveRecord::Base
	has_many :formats
	belongs_to :people
	attr_accessible :Created, :Created_Person_ID, :Description, :Format_Type_Collection_Type_ID, :Updated, :Updated_Person_ID
end
