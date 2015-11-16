require 'rails_helper'

RSpec.describe Ratering, type: :model do

  it { should belong_to :rateable }

end
