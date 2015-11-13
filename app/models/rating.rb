class Rating < ActiveRecord::Base

  has_many :rateables

  has_many :topics, through: :rateables, source: :rateable, source_type: :Topic

  has_many :posts, through: :rateables, source: :rateable, source_type: :Post

  def self.update_rating(rating_string)
  end


  enum severity: [ :PG, :PG13, :R]

end
