class ArtistType < ActiveRecord::Base
	has_many :artists
	attr_accessible :Created, :Created_Person_ID, :Description, :Updated, :Updated_Person_ID
end
