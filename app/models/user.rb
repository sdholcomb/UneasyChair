class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :tracks, through: :user_roles
  has_many :user_roles
  has_many :papers
  has_many :conferences
  has_many :requests
end
