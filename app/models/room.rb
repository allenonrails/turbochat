class Room < ApplicationRecord
  has_many :messages, -> { sorted }, dependent: :destroy
  belongs_to :user

  before_create { self.title = "room_#{Room.last&.id.to_i + 1}" }
end
