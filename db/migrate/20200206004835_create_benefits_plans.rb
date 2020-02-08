class CreateBenefitsPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :benefits_plans do |t|
      t.references :benefit, foreign_key: true
      t.references :plan, foreign_key: true
      t.decimal :jumlah

      t.timestamps
    end
  end
end
