class Grading < ActiveRecord::Base
	belongs_to :persons_releases
	belongs_to :people
	attr_accessible :Created, :Created_Person_ID, :Description, :Grading, :Updated, :Updated_Person_ID
end
