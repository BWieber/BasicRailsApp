class Severities < ActiveRecord::Base

  belongs_to :severity, polymorphic: true

end
