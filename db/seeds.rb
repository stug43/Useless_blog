# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Like.destroy_all
Comment.destroy_all
Article.destroy_all
Category.destroy_all

100.times do |index|
	user = User.create!({email: "fake_email#{index}@thehacking.pro", name: Faker::FunnyName.three_word_name})
end

10.times do |index|
  cat = Category.create!({name: Faker::Cannabis.buzzword})
end

100.times do |index|
	article = Article.create!({category: Category.all[rand(Category.all.size-1)], user: User.all[rand(User.all.size-1)], title: Faker::Hobbit.thorins_company, body: Faker::Lorem.sentence(15)})
end

100.times do |index|
  commentary = Comment.create!({user: User.all[rand(User.all.size-1)], article: Article.all[rand(Article.all.size-1)], comment: Faker::Lorem.sentence(5)})
end

100.times do |index|
  like = Like.create!({user: User.all[rand(User.all.size-1)], article: Article.all[rand(Article.all.size-1)]})
end
