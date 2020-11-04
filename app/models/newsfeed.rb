class Newsfeed < ApplicationRecord
  validates :title, :content, presence: true
end
