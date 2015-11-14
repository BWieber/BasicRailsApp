class Rating < ActiveRecord::Base

  has_many :severities

  has_many :topics, through: :severities, source: :severity, source_type: :Topic

  has_many :posts, through: :severities, source: :severity, source_type: :Post

  def self.update_rating(rating_string)
  end


  

end
