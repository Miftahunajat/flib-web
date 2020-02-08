class AddPangkatToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :pangkat
    add_reference :users, :pangkat, index: true
    add_foreign_key :users, :pangkats
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
