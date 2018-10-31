class Contractor < ApplicationRecord
  belongs_to :user

  enum lvl_of_exp: {"Junior" => 0, "Mid" => 1, "Senior" => 2}
  enum engineer_type: {"Front end" => 0, "Back end" => 1, "Full stack" => 2}
  enum pay_range: {"0-200" => 0, "200-400" => 1, "400-600" => 2, "600-800" => 3, "800-1000" => 4, "1000+" => 5 }
  enum pref_contract: {"3 months" => 0 , "6 months" => 1, "9 months" => 2, "12 months" => 3}
end
