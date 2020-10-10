class VideoGameTitlesController < ApplicationController
  def index
    @video_game_titles = VideoGameTitle.order("name ASC")
  end

  def show
    @video_game_title = VideoGameTitle.includes(:video_game_iterations).find(params["id"])
  end
end