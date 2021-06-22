Rails.application.routes.draw do
  resources :graphs, only: [:index, :create]

end
