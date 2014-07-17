class ReleaseTrack < ActiveRecord::Base
	belongs_to :people
  attr_accessible :Created, :Created_Person_ID, :Release_ID, :Tracks_ID, :Updated, :Updated_Person_ID
end
