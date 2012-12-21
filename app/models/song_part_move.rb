class SongPartMove < ActiveRecord::Base
  attr_accessible :move_id, :song_part_id, :order_id

  belongs_to :song_part
  belongs_to :move

  validates :order_id, uniqueness: { scope: :song_part_id }
end
