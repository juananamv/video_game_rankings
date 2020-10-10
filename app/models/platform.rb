class Platform < ApplicationRecord
  has_many :video_game_iterations
  has_many :video_game_titles, through: :video_game_iterations
  validates :name, presence: true
end
