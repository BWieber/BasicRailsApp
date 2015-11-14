require 'rails_helper'

RSpec.describe Rating, type: :model do

  it { should have_many :severities }

  it { should have_many(:topics).through(:severities) }
  it { should have_many(:posts).through(:severities) }

end
