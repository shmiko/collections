class ArtistPerson < ActiveRecord::Base
	belongs_to :artist
	belongs_to :people
	attr_accessible :Artist_ID, :Created, :Created_Person_ID, :Enter_Date, :Leave_Date, :Persons_ID, :Updated, :Updated_Person_ID
end
