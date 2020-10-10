class Publisher < ApplicationRecord
  has_many :video_game_titles
  validates :name, presence: true
end
