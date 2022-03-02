class AddTitleAndUserToRoom < ActiveRecord::Migration[7.0]
  def change
    add_reference :rooms, :user, null: false, foreign_key: true
    add_column :rooms, :title, :string, null: false, index: true
  end
end
