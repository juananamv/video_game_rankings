class VideoGameTitlesController < ApplicationController
  def index
    if params["query"].nil? || params["query"] == ''
      @video_game_titles = VideoGameTitle.order('name ASC')
      @header = "Full List of Titles"
    else
      @video_game_titles = VideoGameTitle.where("name LIKE '%#{params['query']}%'")
      @header = "#{@video_game_titles.count} results found for #{params['query']}"
    end
  end

  def show
    @video_game_title = VideoGameTitle.includes(:video_game_iterations).find(params["id"])
  end
end