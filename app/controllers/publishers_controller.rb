class PublishersController < ApplicationController
  def index
    @publishers = Publisher.left_outer_joins(:video_game_titles)
                           .select("publishers.*, COUNT(video_game_titles.id) AS title_count")
                           .group("publishers.id")
  end

  def show
    @publisher = Publisher.left_outer_joins(:video_game_titles)
                          .select("publishers.*, COUNT(video_game_titles.id) AS title_count")
                          .group("publishers.id")
                          .find(params["id"])
  end
end
