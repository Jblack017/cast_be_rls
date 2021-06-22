Rails.application.routes.draw do
  resources :projects, only: [:index, :show, :create]
  resources :graphs, only: [:index, :create]

end
