class Person < ActiveRecord::Base
	has_many :addres
	has_many :artist_people
	has_many :artist_types
	has_many :artists
	has_many :audio_types
	has_many :bases
	has_many :binds
	has_many :categories
	has_many :category_types
	has_many :collection_types
	has_many :conditions
	has_many :countries
	has_many :edition_types
	has_many :followings
	has_many :format_types
	has_many :formats
	has_many :genre_types
	has_many :genres
	has_many :gradings
	has_many :information
	has_many :information_tags
	has_many :languages
	has_many :lyrics
	has_and_belongs_to_many  :persons_addres
	has_many :persons_releases
	has_many :pictures
	has_many :publishers
	has_many :ratings
	has_many :recording_types
	has_many :related_releases
	has_many :release_languages
	has_many :release_loans
	has_many :release_tracks
	has_many :releases
	has_many :subtypes
	has_many :tags
	has_many :technicals
	has_many :tracks
	has_many :types
	attr_accessible :Created, :Created_Person_ID, :Firstname, :Surname, :Updated, :Updated_Person_ID
end
