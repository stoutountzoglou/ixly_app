class Task < ApplicationRecord
  has_many :candidate_tasks
  has_many :candidates, through: :candidate_tasks, dependent: :destroy

  validates :description, presence: true
end
