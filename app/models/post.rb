class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :post_image, PhotoUploader
  extend FriendlyId
  friendly_id :titulo, use: :slugged
end
