class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :mstar_id
      t.string :sequence

      t.timestamps
    end
  end
end
