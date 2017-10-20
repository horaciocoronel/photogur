class RemovesUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :user_id
  end
end
