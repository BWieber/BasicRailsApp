require 'rails_helper'

RSpec.describe Rating, type: :model do

  it { should have_many :rateables }

  it { should have_many(:topics).through(:rateables) }
  it { should have_many(:posts).through(:rateables) }

end
