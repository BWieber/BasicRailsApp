class Rating < ActiveRecord::Base

  belongs_to :rateable, polymorphic: true

  has_many :raterings

  has_many :topics, through: :raterings, source: :rateable, source_type: :Topic

  has_many :posts, through: :raterings, source: :rateable, source_type: :Post

  enum severity: [ :PG, :PG13, :R]

  def self.update_rating(rating_string)
    return false if rating_string.blank?
    
  end

end
