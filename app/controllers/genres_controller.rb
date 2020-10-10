class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:video_game_titles).order("name ASC")
  end
end
