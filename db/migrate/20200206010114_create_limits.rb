class CreateLimits < ActiveRecord::Migration[5.2]
  def change
    create_table :limits do |t|
      t.references :benefits_plan, foreign_key: true
      t.references :pangkat, foreign_key: true

      t.timestamps
    end
  end
end
