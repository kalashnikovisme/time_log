class Entry < ApplicationRecord
  belongs_to :task

  after_commit -> { CalcStatWorker.perform_async(self.task_id) }
end
