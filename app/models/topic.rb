class Topic < ActiveRecord::Base

  has_many :posts, dependent: :destroy

  has_many :labelings, as: :labelable

  has_many :labels, through: :labelings

  has_many :raterings, as: :rateable

  has_many :ratings, through: :raterings

  enum severity: [ :PG, :PG13, :R]

end
