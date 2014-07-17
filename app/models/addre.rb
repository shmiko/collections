class Addre < ActiveRecord::Base
	has_and_belongs_to_many  :persons_addres
	belongs_to :people
	has_one :country
	attr_accessible :Country_ID, :Created, :Created_Person_ID, :Street, :Suburb, :Updated, :Updated_Person_ID
end
