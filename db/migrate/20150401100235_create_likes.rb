class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :content, null: false
      t.belongs_to :user, null: false
      t.timestamps null: false
    end
  end
end
