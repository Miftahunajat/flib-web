class AddCreditToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :credit, :decimal
  end
end
