class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  has_many :labelings, as: :labelable

  has_many :labels, through: :labelings

  has_many :severities, as: :severity

  has_many :raitings, through: :severities
end
