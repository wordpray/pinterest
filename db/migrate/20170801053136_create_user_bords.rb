class CreateUserBords < ActiveRecord::Migration[5.0]
  def change
    create_table :user_bords do |t|
      t.references :user, foreign_key: true
      t.references :board, foreign_key: true

      t.timestamps
    end
    add_index :user_bords, [:user_id,:board_id,]
  end
end
