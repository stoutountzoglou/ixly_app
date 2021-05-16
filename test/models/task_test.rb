require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "creates task successfully" do
    assert_difference 'Task.count', +1 do
      Task.create(description: 'description')
    end
  end

  test "task must have a description" do
    task = Task.create(description: nil)
    assert_includes task.errors.full_messages, "Description can't be blank"
  end
end
