class RemoveImageIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :image_id, :string
  end
end
