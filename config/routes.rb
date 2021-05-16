Rails.application.routes.draw do
  resources :candidate_tasks
  resources :candidates
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
