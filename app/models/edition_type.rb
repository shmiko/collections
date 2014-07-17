class EditionType < ActiveRecord::Base
	has_many :information
	belongs_to :people
	attr_accessible :Created, :Created_Person_ID, :Description, :Updated, :Updated_Person_ID
end
