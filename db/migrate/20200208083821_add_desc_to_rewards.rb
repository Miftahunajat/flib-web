class AddDescToRewards < ActiveRecord::Migration[5.2]
  def change
    add_column :rewards, :desc, :text
  end
end
