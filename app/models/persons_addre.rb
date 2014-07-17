class PersonsAddre < ActiveRecord::Base
	belongs_to :people
	attr_accessible :Address_ID, :Created, :Created_Person_ID, :Persons_ID, :Updated, :Updated_Person_ID
end
