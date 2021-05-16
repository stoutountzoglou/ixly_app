require "test_helper"

class CandidateTaskTest < ActiveSupport::TestCase
  def setup
    @task = Task.create(description: 'task')
    @candidate = Candidate.create(email: 'email')
    CandidateTask.create(task_id: @task.id, candidate_id: @candidate.id)
  end

  test "when the task is deleted, all candidates are unasigned from the task" do
    @task.destroy

    assert_empty CandidateTask.where(task_id: @task.id)
  end

  test "when the candidate is deleted, all his asigned tasks are discarted" do
    @candidate.destroy

    assert_empty CandidateTask.where(candidate_id: @candidate.id)
  end

  test "can't assign the tast twice to the same candidate" do
    candidate_task = CandidateTask.create(task_id: @task.id, candidate_id: @candidate.id)
    assert_includes candidate_task.errors.full_messages, "Task has already been assigned to candidate"
  end
end
