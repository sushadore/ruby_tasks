class Task
  @@task_list = []

  def initialize(description)
    @description = description
  end

  def description
    @description
  end

  define_singleton_method(:all_tasks) do
    @@task_list
  end

  def save
    @@task_list.push(self)
  end
end
