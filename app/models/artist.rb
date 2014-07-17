class Artist < ActiveRecord::Base
	belongs_to :artist_type
	attr_accessible :Artist_Type_ID, :Created, :Created_Person_ID, :Name, :Updated, :Updated_Person_ID
end
