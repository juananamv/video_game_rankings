class PlatformsController < ApplicationController
  def index
    @platforms = Platform.includes(:video_game_titles)
  end

  def show
    @platform = VideoGameTitle.includes(:vide_game_titles).find(params["id"])
  end
end
