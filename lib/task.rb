class Task
  def initialize(description)
    @description = description
  end

  def description
    @description
  end

  define_singleton_method(:all_tasks) do
    []
  end  
end
