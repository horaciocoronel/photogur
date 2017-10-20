class ModifyUserIdColumn < ActiveRecord::Migration[5.0]
  def up
    change_column :pictures, :user_id, :integer, :null => false
  end

  def down
    change_column :pictures, :user_id, :integer, :null => false, :default => 1
  end
end
