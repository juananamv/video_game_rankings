class VideoGameTitle < ApplicationRecord
  belongs_to :publisher
  belongs_to :genre
end
