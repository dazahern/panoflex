class ChangeBudgetToBigIntForGroup < ActiveRecord::Migration
  def change
    change_column :groups, :budget_pennies,  :bigint
  end
end
