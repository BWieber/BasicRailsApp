include RandomData

# Create posts
  50.times do

    Post.create!(

      title: RandomData.random_sentence,
      body:  RandomData.random_paragraph
    )
  end
  posts = Post.all

  #Create comments

  100.times do
    Comment.create!(

      post: posts.sample,
      body:  RandomData.random_paragraph
    )
  end

  #Find a particular post, and if not created, create it!
  Post.find_or_create_by(title: "Brandon's Title", body: "Brandon's Body")


puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments create"
