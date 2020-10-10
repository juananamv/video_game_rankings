class PublishersController < ApplicationController
  def index
    @publishers = Publisher.includes(:video_game_titles).order("name ASC")
  end

  def show
    @publisher = Publisher.find(params["id"])
  end
end
