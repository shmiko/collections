class GenreType < ActiveRecord::Base
	has_many :genres
	belongs_to :people
	attr_accessible :Created, :Created_Person_ID, :Description, :Genre_Type_Collection_Type_ID, :Updated, :Updated_Person_ID
end
