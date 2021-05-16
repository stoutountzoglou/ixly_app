class CandidateTask < ApplicationRecord
  belongs_to :task
  belongs_to :candidate

  validates :task, :candidate, presence: true
end
