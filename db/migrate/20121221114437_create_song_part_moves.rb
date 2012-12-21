class CreateSongPartMoves < ActiveRecord::Migration
  def change
    create_table :song_part_moves do |t|
      t.integer :song_part_id
      t.integer :move_id
      t.integer :order_id

      t.timestamps
    end
  end
end
