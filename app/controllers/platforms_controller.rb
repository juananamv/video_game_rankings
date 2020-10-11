class PlatformsController < ApplicationController
  def index
    @platforms = Platform.includes(:video_game_titles)
  end

  def show
    @platform = Platform.includes(:video_game_titles).find(params["id"])
  end
end
