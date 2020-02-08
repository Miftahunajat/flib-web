class CreateUserBenefits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_benefits do |t|
      t.references :user, foreign_key: true
      t.references :benefit, foreign_key: true

      t.timestamps
    end
  end
end
