class Language < ActiveRecord::Base
	belongs_to :release_language
	belongs_to :people
	attr_accessible :Created, :Created_Person_ID, :Description, :Updated, :Updated_Person_ID
end
