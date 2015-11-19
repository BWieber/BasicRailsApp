require 'rails_helper'
include RandomData

  RSpec.describe Rating, type: :model do

    let(:topic)   { create(:topic) }
    let(:post)    { create(:post) }
    let(:user)    { create(:user) }

    let(:rating)  {Rating.create!() }

    it { should have_many :topics }
    it { should have_many :posts }
    it { should have_many :rates }

    describe "rateable" do
      it "allows the same rating to be associated with a different topic and post" do
        topic.ratings << rating
        post.ratings << rating

        topic_rating = topic.ratings[0]
        post_rating  = post.ratings[0]

        expect(topic_rating).to eql(post_rating)
      end
    end

    describe ".update_ratings" do
      it "updates a post with a new rating"

      
  end
