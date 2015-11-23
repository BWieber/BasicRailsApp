class Post < ActiveRecord::Base

  belongs_to :topic
  belongs_to :user

  has_many :comments, dependent: :destroy

  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

  has_one :rating, as: :rateable, dependent: :destroy
  deligate :severity, :severity=, to: :rating

  default_scope { order('created_at DESC') }

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

  after_create :create_rating

  private #---------------------------------------------------------------------------

  def create_rating
    self.rating = Rating.create
  end

end
