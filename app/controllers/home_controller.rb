class HomeController < ApplicationController
  def index
    @publishers = Publisher.select("publishers.*")
                           .select("COUNT(publishers.id) as video_game_title_count")
                           .left_joins(:video_game_titles)
                           .group("publishers.id")
                           .order("video_game_title_count DESC").first(10)
    @video_game_titles = VideoGameTitle.select("video_game_titles.*")
                                       .select("SUM(video_game_iterations.sales) as total_sales")
                                       .left_joins(:video_game_iterations)
                                       .group("video_game_titles.id")
                                       .order("total_sales DESC").first(10)
  end
end
