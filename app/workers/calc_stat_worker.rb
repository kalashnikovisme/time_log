class CalcStatWorker
  include Sidekiq::Worker

  def perform(task_id)
    task = Task.find task_id

    sleep 2

    task.start_calculation!

    sleep 2

    task.finish_calculation!
  end
end
