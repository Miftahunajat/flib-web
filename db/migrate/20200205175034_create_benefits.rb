class CreateBenefits < ActiveRecord::Migration[5.2]
  def change
    create_table :benefits do |t|
      t.string :nama
      t.references :benefit_category, foreign_key: true
      t.decimal :nilai_tukar

      t.timestamps
    end
  end
end
