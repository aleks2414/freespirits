class Event < ApplicationRecord
  belongs_to :user
  mount_uploader :foto, AttachmentUploader
  has_many :blocks, :dependent => :destroy
	accepts_nested_attributes_for :blocks, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

  extend FriendlyId
  friendly_id :nombre, use: :slugged

end
