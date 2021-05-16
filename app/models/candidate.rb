class Candidate < ApplicationRecord
  has_many :candidate_tasks
  has_many :tasks, through: :candidate_tasks

  validates :email, uniqueness: true
end
