class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :group, null: false
      t.belongs_to :giver, null: false
      t.belongs_to :receiver, null: false
      t.timestamps null: false
    end
  end
end
