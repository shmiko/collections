class Genre < ActiveRecord::Base
	has_many :information
	belongs_to :people
	has_one :genre_type
	attr_accessible :Created, :Created_Person_ID, :Genre_Release_ID, :Genre_Type_ID, :Updated, :Updated_Person_ID
end
