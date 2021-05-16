require "application_system_test_case"

class CandidateTasksTest < ApplicationSystemTestCase
  setup do
    @candidate_task = candidate_tasks(:one)
  end

  test "visiting the index" do
    visit candidate_tasks_url
    assert_selector "h1", text: "Candidate Tasks"
  end

  test "creating a Candidate task" do
    visit candidate_tasks_url
    click_on "New Candidate Task"

    fill_in "Candidate", with: @candidate_task.candidate_id
    fill_in "Task", with: @candidate_task.task_id
    click_on "Create Candidate task"

    assert_text "Candidate task was successfully created"
    click_on "Back"
  end

  test "updating a Candidate task" do
    visit candidate_tasks_url
    click_on "Edit", match: :first

    fill_in "Candidate", with: @candidate_task.candidate_id
    fill_in "Task", with: @candidate_task.task_id
    click_on "Update Candidate task"

    assert_text "Candidate task was successfully updated"
    click_on "Back"
  end

  test "destroying a Candidate task" do
    visit candidate_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Candidate task was successfully destroyed"
  end
end
