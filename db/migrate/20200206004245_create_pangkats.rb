class CreatePangkats < ActiveRecord::Migration[5.2]
  def change
    create_table :pangkats do |t|
      t.string :nama
      t.decimal :code

      t.timestamps
    end
  end
end
