class VideoGameIteration < ApplicationRecord
  belongs_to :video_game_title
  belongs_to :platform
  validates :year, :rating, numericality: { only_integer: true }
  validates :sales, numericality: true
end
