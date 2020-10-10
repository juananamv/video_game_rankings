class VideoGameTitle < ApplicationRecord
  belongs_to :publisher
  belongs_to :genre
  has_many :video_game_iterations
  has_many :platforms, through: :video_game_iterations
  validates :name, presence: true

  def total_sales
    total_sales = 0
    video_game_iterations.each do |i|
      total_sales += i.sales
    end
    total_sales
  end

  def average_rating
    rating = 0
    no_iterations = 0
    video_game_iterations.each do |i|
      rating += i.rating
      no_iterations += 1
    end
    rating = rating / no_iterations
  end
end
