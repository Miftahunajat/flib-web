class AddVerifyToKlaims < ActiveRecord::Migration[5.2]
  def change
    add_column :klaims, :kredit, :boolean
  end
end
