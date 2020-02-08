class AddKelasToBenefits < ActiveRecord::Migration[5.2]
  def change
    add_column :benefits, :kelas, :decimal
    add_column :benefits, :limit, :decimal, default: 0
  end
end
