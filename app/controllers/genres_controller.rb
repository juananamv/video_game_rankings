class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:video_game_titles).order("name ASC")
  end

  def show
    @genre = Genre.includes(:video_game_titles).find(params["id"])
  end
end
