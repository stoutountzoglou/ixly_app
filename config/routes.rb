Rails.application.routes.draw do
  resources :candidate_tasks
  resources :candidates, except: [:index]
  get '/candidates_index', to: 'candidates#index'
  resources :tasks
  get '/candidates', to: 'candidate_tasks#grouped_candidate_tasks'
end
