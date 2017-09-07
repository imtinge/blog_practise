namespace :dev do
  task fake: :environment do
    Post.delete_all

    50.times do |i|
    Post.create! title: Faker::Lorem.sentence, content: Faker::Lorem.paragraphs.join
    end

    puts "50 posts created!"
  end
end
