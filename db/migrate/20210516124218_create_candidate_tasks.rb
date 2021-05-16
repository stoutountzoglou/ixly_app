class CreateCandidateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :candidate_tasks do |t|
      t.integer :task_id
      t.integer :candidate_id

      t.timestamps
    end
  end
end
