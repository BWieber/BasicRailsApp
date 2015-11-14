require 'rails_helper'

RSpec.describe Severities, type: :model do

  it { should belong_to :severity }

end
