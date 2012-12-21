class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :mstar_id
      t.string :title

      t.timestamps
    end
  end
end
