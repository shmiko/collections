class Technical < ActiveRecord::Base
	belongs_to :people
  attr_accessible :Bitrate, :Created, :Created_Person_ID, :Dimensions, :External_References, :ISBN10, :ISBN13, :Modified, :No_of_Discs, :Pages, :Recording_Type_ID, :Release_ID, :Series, :Service, :Service_URL, :Size, :Storage_Medium, :Technical_Notes, :Total_Runtime, :Updated_Person_ID, :Value_High, :Value_Low, :Value_Med, :Volume_Name, :Volume_nr, :Webpage
end
