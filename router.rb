class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "what do you want to do?"
      puts "1- Add a task"
      puts "2- List tasks"
      puts "3- Mark task as completed"
      puts "4- Quit"
      choice = gets.chomp.to_i

      case choice
      when 1
        @controller.create_task
      when 2
        @controller.list_tasks
      when 3
        @controller.mark_as_completed
      when 4
        puts "bye"
        break
      else
        puts "Please choose valid option, ma friend."
      end
    end

  end

end
