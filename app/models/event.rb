class Event < ApplicationRecord
  belongs_to :user
  mount_uploader :foto, AttachmentUploader

  extend FriendlyId
  friendly_id :nombre, use: :slugged

end
