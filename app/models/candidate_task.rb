class CandidateTask < ApplicationRecord
  belongs_to :task
  belongs_to :candidate

  validates :task, :candidate, presence: true
  validates_uniqueness_of :task_id, scope: %i[task_id candidate_id], message: "has already been assigned to candidate"
end
