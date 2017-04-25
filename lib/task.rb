class Task
  @@all_tasks = []

  def initialize(description)
    @description = description
  end

  def description
    @description
  end

  define_singleton_method(:all) do
    @@all_tasks
  end

  def save
    @@all_tasks.push(self)
  end

  define_singleton_method(:clear) do
    @@all_tasks = []
  end
end
