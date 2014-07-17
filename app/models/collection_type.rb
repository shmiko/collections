class CollectionType < ActiveRecord::Base
	has_many :category_types
	has_many :releases
	belongs_to :people
	attr_accessible :Created, :Created_Person_ID, :Description, :Updated, :Updated_Person_ID
end
