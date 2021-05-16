class Task < ApplicationRecord
  has_many :candidate_tasks
  has_many :candidates, through: :candidate_tasks

  validates :description, presence: true
end
