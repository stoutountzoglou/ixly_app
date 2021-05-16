class Candidate < ApplicationRecord
  has_many :candidate_tasks
  has_many :tasks, through: :candidate_tasks, dependent: :destroy

  validates :email, uniqueness: true, presence: true
end
