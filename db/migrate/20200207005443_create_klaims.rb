class CreateKlaims < ActiveRecord::Migration[5.2]
  def change
    create_table :klaims do |t|
      t.references :user, foreign_key: true
      t.references :benefit, foreign_key: true
      t.references :status, foreign_key: true
      t.date :tanggal
      t.decimal :jumlah
      t.string :photo
      t.string :tempat
      t.string :jenis, default: 'Not Claimed'

      t.timestamps
    end
  end
end
