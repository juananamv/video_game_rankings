class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:video_game_titles).order("name ASC")

    @genres = Genre.left_outer_joins(:video_game_titles)
                         .select("genres.*, COUNT(video_game_titles.id) AS title_count")
                         .group("genres.id")
  end

  def show
    @genre = Genre.find(params["id"])
  end
end
