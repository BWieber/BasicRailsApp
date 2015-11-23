require 'rails_helper'
include RandomData

RSpec.describe Rating, type: :model do

  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:user)  { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
  let(:post)  { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
  let(:rating) { Rating.create!(severity: 'PG') }

  it { should belong_to :rateable }

  describe "rateable" do
    it "allows the same rating to be associated with a different topic and post" do
      topic.rating = rating
      post.rating = rating

      topic_rating = topic.rating
      post_rating  = post.rating

      expect(topic_rating).to eql(post_rating)
    end
  end

  describe ".update_rating" do
    before do
      @another_post = Post.create(title: "My post title", body: "My awesome post body which fulfills requirements", user: user, topic: topic)
    end

    it "updates the rating to a severity value" do
      @another_post.severity = 'PG'
      rated_post = @another_post
      expect(rated_post.severity).to eq(rating.severity)
    end
  end
end
