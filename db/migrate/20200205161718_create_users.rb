class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nama
      t.string :email
      t.string :password
      t.string :status
      t.decimal :usia, precision: 5
      t.decimal :pangkat, precision: 5, default: 0
      t.date :tanggal_masuk
      t.decimal :jumlah_dependant, precision: 5, default: 0
      t.decimal :jumlah_kredit, precision: 5, default: 0

      t.timestamps
    end
  end
end
