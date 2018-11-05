class ChangeCityTypeInContractors < ActiveRecord::Migration[5.2]
def change 
  change_column :contractors, :city, 'integer USING CAST(city AS integer)'
end
end