class TaskView

  def ask_for_task
    puts "What taks would you like to add"
    print "> "
    anw = gets.chomp
    return anw
  end

  # 1. [x] do flashcards
  # 2. [ ]run 2k

  def show_tasks(tasks)
    tasks.each_with_index do |task, index|
      status = task.done? ? "x" : " "
      puts "#{index + 1}. [#{status}] #{task.name}"
    end
  end

  def ask_for_index
    puts "which index you want to mark as completed?"
    print "> "
    index = gets.chomp.to_i - 1
    index
  end

end
