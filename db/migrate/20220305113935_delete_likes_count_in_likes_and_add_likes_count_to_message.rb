class DeleteLikesCountInLikesAndAddLikesCountToMessage < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :likes_count
    change_table :messages do |t|
      t.integer :likes_count, null: false, default: 0
    end
  end
end
