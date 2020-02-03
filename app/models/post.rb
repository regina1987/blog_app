class Post < ApplicationRecord
  validates :title , presence: {message: "title is empty"}
  validates :content , presence: {message: "content is empty"}
  validates :image_url , presence: {message: "image is empty"}
end
