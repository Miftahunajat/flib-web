class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.string :nama
      t.date :startdate
      t.date :enddate
      t.decimal :jumlah_kredit
      t.string :photo

      t.timestamps
    end
  end
end
