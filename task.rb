class Task

  attr_reader :name

  def initialize(name)
    @name = name
    @done = false
  end

  def mark_as_completed!
    @done = true
  end

  def done?
    @done
  end

end
