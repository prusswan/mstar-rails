class Move < ActiveRecord::Base
  attr_accessible :mstar_id, :sequence

  validates :mstar_id, presence: true, numericality: true
  validates :sequence, presence: true, format: /^([\d\(\)]|(\[[\(\)]\d\]))+$/

  # regex to check that parens are closed and not nested
  validates :sequence, format: /^[^\(\)]*(\([^\(\)]*\))*[^\(\)]*$/
end
