class Topic < ActiveRecord::Base

  has_many :posts, dependent: :destroy

  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

  has_one :rating, as: :rateable, dependent: :destroy
  delegate :severity, :severity=, to: :rating

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 15 }, presence: true

  after_create :create_rating
  after_save :save_rating

  private #---------------------------------------------------------------------------

  def create_rating
    self.rating = Rating.create
  end

  def save_rating
    self.rating.save
  end

end
