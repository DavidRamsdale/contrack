class AddPaidToRecruiter < ActiveRecord::Migration[5.2]
  def change
    add_column :recruiters, :paid, :boolean
  end
end
