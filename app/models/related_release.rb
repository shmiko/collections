class RelatedRelease < ActiveRecord::Base
	belongs_to :people
  attr_accessible :Created, :Created_Person_ID, :Related_From_Release_ID, :Related_To_Release_ID, :Updated, :Updated_Person_ID
end
