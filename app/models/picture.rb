class Picture < ActiveRecord::Base
	has_one :release
	belongs_to :people
	attr_accessible :Back, :Back_Flap, :Created, :Created_Person_ID, :Front, :Front_Flap, :Inner_Page_1, :Inner_Page_2, :Inner_Page_3, :Inner_Page_4, :Release_ID, :Updated, :Updated_Person_ID
end
