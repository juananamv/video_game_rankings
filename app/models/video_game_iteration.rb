class VideoGameIteration < ApplicationRecord
  belongs_to :video_game_title
  belongs_to :platform
end
