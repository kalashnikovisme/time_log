class Task < ApplicationRecord
  include AASM

  aasm do
    state :unviewed, initial: true
    state :approved
    state :declined

    event :approve do
      transitions from: :unviewed, to: :approved
    end

    event :decline do
      transitions from: :unviewed, to: :declined
    end
  end

  after_create -> { broadcast_append_to :tasks }
end
