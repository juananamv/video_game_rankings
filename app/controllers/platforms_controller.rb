class PlatformsController < ApplicationController
  def index
      @platforms = Platform.includes(:video_game_titles)
  end
end
