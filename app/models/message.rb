class Message < ApplicationRecord
  belongs_to :chat

  # Validations
  validates :content, presence: true
  validates :sender_name, presence: true
end
