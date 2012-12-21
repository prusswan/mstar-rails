class CreateSongParts < ActiveRecord::Migration
  def change
    create_table :song_parts do |t|
      t.integer :part_id
      t.integer :song_id

      t.timestamps
    end
  end
end
