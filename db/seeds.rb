Blog.destroy_all
Comment.destroy_all

blog1 = Blog.create!(
  title: "Learning Rails",
  body: "Today I learned about scaffolds."
)

blog2 = Blog.create!(
  title: "Active Record",
  body: "Associations are really powerful."
)

blog1.comments.create!(
  author: "Alice",
  body: "Awesome post!"
)

blog1.comments.create!(
  author: "Bob",
  body: "Very helpful."
)

blog2.comments.create!(
  author: "Charlie",
  body: "I learned something new today."
)

puts "Seeded #{Blog.count} blogs."
puts "Seeded #{Comment.count} comments."