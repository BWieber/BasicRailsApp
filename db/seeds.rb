include RandomData

#Create Users

  5.times do
    User.create!(
      name:     RandomData.random_name,
      email:    RandomData.random_email,
      password: RandomData.random_sentence
    )
  end
  users = User.all
# Create topics
  15.times do
    t = Topic.create!(
      name:         RandomData.random_sentence,
      description:  RandomData.random_paragraph
    )
    t.rating.severity = rand(4)
    t.rating.save!
  end
  topics = Topic.all


# Create posts
  50.times do

    p = Post.create!(
      user:  users.sample,
      topic: topics.sample,
      title: RandomData.random_sentence,
      body:  RandomData.random_paragraph
    )
    p.rating.severity = rand(4)
    p.rating.save!
  end
  posts = Post.all

  #Create comments

  100.times do
    Comment.create!(
    user: users.sample,
      post: posts.sample,
      body:  RandomData.random_paragraph
    )
  end

  # Create an admin user
  admin = User.create!(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
  )

  #Create a member
  member = User.create!(
  name:     'Member User',
  email:    'member@example.com',
  password: 'helloworld'
  )

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Topic.count} topics created."
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."
