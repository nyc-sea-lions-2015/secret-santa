class AddSpendingLimitToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :spending_limit, :decimal, precision: 6, scale: 2, null: false
  end
end
