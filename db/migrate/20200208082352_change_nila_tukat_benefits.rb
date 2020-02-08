class ChangeNilaTukatBenefits < ActiveRecord::Migration[5.2]
  def change
    change_column :benefits, :nilai_tukar, :decimal, :precision => 10, :scale => 2
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
