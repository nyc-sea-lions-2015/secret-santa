class CreateGroupsUsers < ActiveRecord::Migration
  def change
    create_table :groups_users do |t|
      t.belongs_to :group, null: false
      t.belongs_to :user, null: false
    end
  end
end
