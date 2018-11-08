class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save :sanitize
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :contractor
  has_one :recruiter
  has_many :language_users
  has_many :languages, through: :language_users, dependent: :destroy 

  def sanitize
    self.full_name = self.full_name.downcase.titleize
    self.email.downcase!
  end
end
