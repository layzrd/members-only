Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: %i[index new edit create update show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'posts#index'
end
