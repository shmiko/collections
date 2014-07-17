class Following < ActiveRecord::Base
	belongs_to :people
	attr_accessible :Created, :Created_Person_ID, :Follower_Person_ID, :Following_Person_ID, :Updated, :Updated_Person_ID
end
