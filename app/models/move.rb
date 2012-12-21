class Move < ActiveRecord::Base
  attr_accessible :mstar_id, :sequence
  attr_reader :sequence_stripped

  validates :mstar_id, presence: true, numericality: true, uniqueness: true
  validates :sequence, presence: true

  validates :sequence_stripped, format: /^([\d\(\)]|(\[[\(\)]\d\]))+$/

  # regex to check that parens are closed and not nested
  validates :sequence_stripped, format: /^([^\(\)]*\([^\(\)]*\))*[^\(\)]*$/

  def sequence_stripped
    sequence.gsub(/\s+/, "")
  end
end
