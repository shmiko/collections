class Track < ActiveRecord::Base
	belongs_to :people
  attr_accessible :Base_ID, :Created, :Created_Person_ID, :Length, :Title, :Updated, :Updated_Person_ID
end
