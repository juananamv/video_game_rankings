require "csv"

VideoGameIteration.delete_all
VideoGameTitle.delete_all
Publisher.delete_all
Genre.delete_all
Platform.delete_all

filename = Rails.root.join("db/VG_Sales_Multi.csv")

video_game_data = File.read(filename)

video_games = CSV.parse(video_game_data, headers: true, encoding: "utf-8")

video_games.each do |v|
  publisher = Publisher.find_or_create_by(name: v["Publisher"])
  genre = Genre.find_or_create_by(name: v["Genre"])

  video_game_title = publisher.video_game_titles.find_or_create_by(
    name: v["Name"],
    genre: genre
  )

  platform = Platform.find_or_create_by(name: v["Platform"])

  video_game_iteration = video_game_title.video_game_iterations.create(
    year: v["Year_of_Release"],
    sales: v["Global_Sales"],
    rating: v["Critic_Score"],
    platform: platform
  )
end

puts "Generated #{Publisher.count} Publishers"
puts "Generated #{Genre.count} Genres"
puts "Generated #{Platform.count} Platforms"
puts "Generated #{VideoGameTitle.count} Video Game Titles"
puts "Generated #{VideoGameIteration.count} Video Game Iterations"