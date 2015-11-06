include RandomData

# Create posts
  50.times do

    Question.create!(

      title: RandomData.random_sentence,
      body:  RandomData.random_paragraph
    )
  end


puts "Seed finished"
puts "#{Question.count} questions created."
