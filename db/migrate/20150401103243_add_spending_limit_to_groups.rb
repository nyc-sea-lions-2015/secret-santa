class AddSpendingLimitToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :spending_limit, :integer, null: false
  end
end
