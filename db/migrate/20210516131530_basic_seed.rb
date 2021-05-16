class BasicSeed < ActiveRecord::Migration[6.1]
  def up
    clean_dishes = Task.create(description: "clean dishes")
    clean_house = Task.create(description: "clean house")
    cook_food = Task.create(description: "cook food")
    groceries = Task.create(description: "pick up groceries")

    george = Candidate.create(name: "George", surname: "Smith", email: "g.smith@husband.com")
    maria = Candidate.create(name: "Maria", surname: "Storm", email: "m.storm@wife.com")

    CandidateTask.create(task_id: clean_house.id, candidate_id: george.id)
    CandidateTask.create(task_id: clean_house.id, candidate_id: maria.id)
    CandidateTask.create(task_id: cook_food.id, candidate_id: george.id)
    CandidateTask.create(task_id: cook_food.id, candidate_id: maria.id)
    CandidateTask.create(task_id: clean_dishes.id, candidate_id: george.id)
    CandidateTask.create(task_id: groceries.id, candidate_id: maria.id)
  end
end
