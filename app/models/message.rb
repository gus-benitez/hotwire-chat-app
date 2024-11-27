class Message < ApplicationRecord
  belongs_to :room

  # Broadcast room changes
  broadcasts_to :room
end
