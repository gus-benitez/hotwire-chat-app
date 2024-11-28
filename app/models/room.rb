class Room < ApplicationRecord
  has_many :messages, dependent: :destroy

  broadcasts_to ->(room) { room }, partial: "rooms/room_with_frame"
end
