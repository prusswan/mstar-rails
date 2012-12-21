class Song < ActiveRecord::Base
  attr_accessible :mstar_id, :title

  validates :mstar_id, presence: true

  has_many :song_parts
  has_many :moves, through: :song_parts
end
