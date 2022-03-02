class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  scope :sorted, -> { irder(:id) }

  validates :body, presence: true
end
