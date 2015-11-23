class Rating < ActiveRecord::Base

  belongs_to :rateable, polymorphic: true

  enum severity: [ :PG, :PG13, :R, :XXX ]

  def self.update_rating(rating_string)
    return false if rating_string.blank?
  end

end
