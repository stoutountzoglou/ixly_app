class BasicSeed < ActiveRecord::Migration[6.1]
  def up
    do_dishes = Task.create(description: "do the dishes")
    clean_house = Task.create(description: "clean house")
    cook_food = Task.create(description: "cook food")
    groceries = Task.create(description: "pick up groceries")

    tom = Candidate.create(name: "Tom", surname: "Sanders", email: "t.sanders@ixly.com")
    karin = Candidate.create(name: "Karin", surname: "Maanen", email: "k.maanen@ixly.com")
    stelios = Candidate.create(name: "Stelios", surname: "Toutou", email: "s.toutou@ixly.com")

    CandidateTask.create(task_id: clean_house.id, candidate_id: tom.id)
    CandidateTask.create(task_id: clean_house.id, candidate_id: karin.id)
    CandidateTask.create(task_id: cook_food.id, candidate_id: tom.id)
    CandidateTask.create(task_id: cook_food.id, candidate_id: karin.id)
    CandidateTask.create(task_id: do_dishes.id, candidate_id: tom.id)
    CandidateTask.create(task_id: groceries.id, candidate_id: karin.id)
  end
end
