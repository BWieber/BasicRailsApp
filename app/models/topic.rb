class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  belongs_to :rateable, polymorphic: true


  has_one :rating, as: :rateable

  scope :visible_to, -> { where(public: true) }
  scope :visible_to, -> (user) { user ? all : where(public: true) }
end
