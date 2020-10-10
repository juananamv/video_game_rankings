class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:video_game_titles)
  end
end
