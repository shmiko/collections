class Format < ActiveRecord::Base
	has_many :information
	belongs_to :people
	has_one :format_type
	attr_accessible :Created, :Created_Person_ID, :Format_Release_ID, :Format_Type_ID, :Updated, :Updated_Person_ID
end
