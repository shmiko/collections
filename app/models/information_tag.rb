class InformationTag < ActiveRecord::Base
	belongs_to :tags
	belongs_to :people
	
  attr_accessible :Created, :Created_Person_ID, :Release_ID, :Tags_ID, :Updated, :Updated_Person_ID
end
