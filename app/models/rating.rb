class Rating < ActiveRecord::Base

  belongs_to :rateable, polymorphic: true

  has_many :rates

  has_many :topics, as: :rateable

  has_many :posts, as: :rateable

  enum severity: { PG: 0, PG13: 1, R: 2 }

  def self.update_rating(rating_string)
    integer = rating_string.to_i
    Rating.new(severity: integer)
  end

  private

  def rating_params
    params.require(:rating).permit(:severity, :integer)
  end
end
