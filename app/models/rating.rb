class Rating < ActiveRecord::Base

  has_many :rates

  has_many :topics, through: :rates, source: :rateable, source_type: :Topic

  has_many :posts, through: :rates, source: :rateable, source_type: :Post

  enum severity: [ :PG, :PG13, :R]

  def self.update_rating(rating_string)
    return false if rating_string.blank?
    
  end

end
