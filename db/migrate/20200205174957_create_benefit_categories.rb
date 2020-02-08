class CreateBenefitCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :benefit_categories do |t|
      t.string :nama
      t.decimal :code

      t.timestamps
    end
  end
end
