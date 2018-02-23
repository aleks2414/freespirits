class Event < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :nombre, use: :slugged
end
