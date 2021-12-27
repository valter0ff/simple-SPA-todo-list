# frozen_string_literal: true

module TasksHelper
  def task_deadline(task)
    task.task_deadline ? task.task_deadline.strftime('Deadline is: %B %d, %Y') : 'Set deadline'
  end
end
