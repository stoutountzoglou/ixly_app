require "test_helper"

class CandidateTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidate_task = candidate_tasks(:one)
  end

  test "should get index" do
    get candidate_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_candidate_task_url
    assert_response :success
  end

  test "should create candidate_task" do
    assert_difference('CandidateTask.count') do
      post candidate_tasks_url, params: { candidate_task: { candidate_id: @candidate_task.candidate_id, task_id: @candidate_task.task_id } }
    end

    assert_redirected_to candidate_task_url(CandidateTask.last)
  end

  test "should show candidate_task" do
    get candidate_task_url(@candidate_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_candidate_task_url(@candidate_task)
    assert_response :success
  end

  test "should update candidate_task" do
    patch candidate_task_url(@candidate_task), params: { candidate_task: { candidate_id: @candidate_task.candidate_id, task_id: @candidate_task.task_id } }
    assert_redirected_to candidate_task_url(@candidate_task)
  end

  test "should destroy candidate_task" do
    assert_difference('CandidateTask.count', -1) do
      delete candidate_task_url(@candidate_task)
    end

    assert_redirected_to candidate_tasks_url
  end
end
