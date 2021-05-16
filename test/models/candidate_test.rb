require "test_helper"

class CandidateTest < ActiveSupport::TestCase
  test "creates Candidate successfully" do
    assert_difference 'Candidate.count', +1 do
      Candidate.create(name: 'name', surname: 'surname', email: 'email')
    end
  end

  test "candidate's email must me unique" do
    Candidate.create(name: 'name', surname: 'surname', email: 'email')
    candidate = Candidate.create(name: 'name', surname: 'surname', email: 'email')
    assert_includes candidate.errors.full_messages, 'Email has already been taken'
  end

  test "candidate must have an email" do
    candidate = Candidate.create(name: 'name', surname: 'surname', email: nil)
    assert_includes candidate.errors.full_messages, "Email can't be blank"
  end
end
