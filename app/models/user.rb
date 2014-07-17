class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  # attr_accessible :title, :body
  has_many :releases
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
end
