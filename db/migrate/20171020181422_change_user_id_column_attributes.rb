class ChangeUserIdColumnAttributes < ActiveRecord::Migration[5.0]
  def change
    change_column :pictures, :user_id, :integer, :null => false
  end
end
