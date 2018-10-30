class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :contractor
  has_one :recruiter
  has_many :language_users
  has_many :languages, through: :language_users, dependent: :destroy 

end
