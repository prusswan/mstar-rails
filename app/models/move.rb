class Move < ActiveRecord::Base
  attr_accessible :mstar_id, :sequence

  validates :mstar_id, presence: true, numericality: true, uniqueness: true
  validates :sequence, presence: true, format: /\A([\d\(\)]|(\[[\(\)]\d\]))+\z/

  # regex to check that parens are closed and not nested
  validates :sequence, format: /\A[^\(\)]*(\([^\(\)]*\))*[^\(\)]*\z/
end
