class SongPart < ActiveRecord::Base
  attr_accessible :part_id, :song_id

  belongs_to :song
  has_many :moves, through: :song_part_moves

  def description
    "#{song.title} (#{part_id})"
  end
end
