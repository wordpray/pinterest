class CreateBoardPins < ActiveRecord::Migration[5.0]
  def change
    create_table :board_pins do |t|
      t.references :pin, foreign_key: true
      t.references :board, foreign_key: true

      t.timestamps
    end
    add_index :board_pins, [:pin_id,:board_id,]
  end
end
