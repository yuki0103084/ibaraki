class AddImageIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image_id, :string
  end
end
