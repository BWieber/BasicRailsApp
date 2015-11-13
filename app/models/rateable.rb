class Rateable < ActiveRecord::Base

  belongs_to :rateable, polymorphic: true

end
