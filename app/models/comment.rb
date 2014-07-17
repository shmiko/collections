class Comment < ActiveRecord::Base
  belongs_to :release
  attr_accessible :body, :commenter
end
