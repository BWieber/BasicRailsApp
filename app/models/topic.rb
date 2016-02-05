class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

<<<<<<< HEAD
  default_scope { order('updated_at DESC') }
  scope :visible_to, -> { where(public: true) }
=======
>>>>>>> topics_fix
  scope :visible_to, -> (user) { user ? all : where(public: true) }

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 15 }, presence: true
end
