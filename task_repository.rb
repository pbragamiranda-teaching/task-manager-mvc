class TaskRepository
  # attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task # task is an instance of Task class
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

end
