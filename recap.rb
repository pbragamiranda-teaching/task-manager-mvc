class Cat

  # attr_reader :name
  # attr_writer :name
  attr_accessor :name
  #OOP = STATE + BEHAVIOR

  def initialize(name)
    @alive = true
    @name = name
  end

  def accident
    @alive = false
  end

end



felix = Cat.new('felix')

garfield = Cat.new('garfield')


felix.name = 'bob'

p felix
