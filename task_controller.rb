require_relative 'task'

class TaskController

  def initialize(view, repository)
    @view = view # an instance of TaskView class
    @repository = repository # an instance of TaskRepository class
  end

  def create_task
    # 1. Ask user for what task to add
    task_name = @view.ask_for_task
    # 2. Create a new task
    task = Task.new(task_name)
    # 3. Add task to the repo
    @repository.add(task)
  end

  def list_tasks
    tasks = @repository.all
    @view.show_tasks(tasks)
  end

  def mark_as_completed
    # 1. Ask user for index of task to be marked
    index = @view.ask_for_index
    # 2. Find the task in the repository
    task = @repository.find(index)
    # 3. Update task done
    task.mark_as_completed!
  end


end
