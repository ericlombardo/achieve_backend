Rails.application.routes.draw do
  resources :quotes
  resources :milestones
  resources :activities
  resources :goals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
