class Message < ApplicationRecord
  # Associations
  belongs_to :chat

  # Enums
  enum status: {
    sent: 0,
    delivered: 1,
    read: 2
  }

  # Validations
  validates :content, presence: true
  validates :sender_name, presence: true
  validates :status, presence: true

  # Scopes
  scope :unread, -> { where(status: :sent) }
  scope :chronological, -> { order(created_at: :asc) }
  scope :recent_first, -> { order(created_at: :desc) }

  # Callbacks
  after_create_commit :broadcast_message

  private

  def broadcast_message
    # Will implement real-time broadcasting later
  end
end
