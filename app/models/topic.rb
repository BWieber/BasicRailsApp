class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

  default_scope { order('updated_at DESC') }
  scope :visible_to, -> { where(public: true) }
  scope :visible_to, -> (user) { user ? all : where(public: true) }
end
