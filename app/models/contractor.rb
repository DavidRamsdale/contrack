class Contractor < ApplicationRecord
  mount_uploader :photo, PictureUploader
  mount_uploader :cv, CvUploader
  #before_save :contractor_exists
  belongs_to :user
  validates :lvl_of_exp, :engineer_type, :city, :pay_range, :pref_contract, :end_date, presence: true


  enum lvl_of_exp: {"Junior" => 0, "Mid" => 1, "Senior" => 2}
  enum engineer_type: {"Front end" => 0, "Back end" => 1, "Full stack" => 2}
  enum pay_range: {"0-200" => 0, "200-400" => 1, "400-600" => 2, "600-800" => 3, "800-1000" => 4, "1000+" => 5 }
  enum pref_contract: {"3 months" => 0 , "6 months" => 1, "9 months" => 2, "12 months" => 3}
  enum city: {"Sydney" => 0, "Melbourne" => 1, "Brisbane" => 2, "Adelaide" => 3, "Perth" => 4, "Canberra" => 5, "Hobart" => 6, "Darwin" => 7}
  
  
end
