class AddDescToBenefits < ActiveRecord::Migration[5.2]
  def change
    add_column :benefits, :desc, :text
  end
end
