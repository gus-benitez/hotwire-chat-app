class Chat < ApplicationRecord
  # Associations
  has_many :messages, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :is_group_chat, inclusion: { in: [ true, false ] }

  # Scopes
  scope :active, -> { where.not(deleted_at: nil) }
end
