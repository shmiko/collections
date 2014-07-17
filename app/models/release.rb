class Release < ActiveRecord::Base
	belongs_to :base
	belongs_to :artist
	belongs_to :people
	belongs_to :collection_type
	belongs_to :rating
	belongs_to :user
	has_one :information
	has_many :comments, dependent: :destroy
	attr_accessible :Artist_ID, :Base_ID, :Cat_No, :Collection_Type_ID, :Created, :Created_Person_ID, :Description, :Edition_Comment, :Rating_ID, :Release_Date, :Title, :Updated, :Updated_Person_ID
end
