class RemoveUserIdToPins < ActiveRecord::Migration[5.0]
  def change
    remove_column :pins, :user_id, :integer
  end
end
