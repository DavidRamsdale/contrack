class CreateContractors < ActiveRecord::Migration[5.2]
  def change
    create_table :contractors do |t|
      t.references :user, foreign_key: true
      t.integer :lvl_of_exp
      t.date :end_date
      t.string :current_role
      t.string :current_company
      t.integer :engineer_type
      t.string :city
      t.boolean :will_move
      t.integer :pay_range
      t.integer :pref_contract
      t.boolean :available_now
      t.text :photo
      t.text :cv
      t.string :linkedin
      t.string :github

      t.timestamps
    end
  end
end
