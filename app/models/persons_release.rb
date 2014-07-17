class PersonsRelease < ActiveRecord::Base
	belongs_to :audio_type
	belongs_to :people
	attr_accessible :Audio_Type_ID, :Bitrate, :Created, :Created_Person_ID, :Dimensions, :Filehash, :Filehash_type, :Filesize, :No_Of_Copies, :Own, :Persons_ID, :Release_ID, :Size, :Updated, :Updated_Person_ID, :Want
end
