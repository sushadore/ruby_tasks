require('rspec')
require('task')

describe(Task) do
  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("scrub the zebra")
      expect(test_task.description()).to(eq("scrub the zebra"))
    end
  end

  describe(".all_tasks") do
    it("is empty at first") do
      expect(Task.all_tasks()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new("wash the lion")
      test_task.save()
      expect(Task.all_tasks()).to(eq([test_task]))
    end
  end
end
