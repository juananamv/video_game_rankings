class VideoGameTitle < ApplicationRecord
  belongs_to :publisher
  belongs_to :genre
  has_many :video_game_iterations
  has_many :platform, through: :video_game_iterations
  validates :name, presence: true
end
