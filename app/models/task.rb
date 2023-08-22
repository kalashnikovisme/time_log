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

  aasm column: :calculcation_state do
    state :not_started, initial: true
    state :in_progress
    state :finished

    event :start_calculation do
      transitions from: [:not_started, :finished], to: :in_progress
    end

    event :finish_calculation do
      transitions from: :in_progress, to: :finished
    end
  end
end
