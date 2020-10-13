class PlatformsController < ApplicationController
  def index
    @platforms = Platform.left_outer_joins(:video_game_titles)
                         .select("platforms.*, COUNT(video_game_titles.id) AS title_count")
                         .group("platforms.id")
  end

  def show
    @platform = Platform.find(params["id"])
  end
end
