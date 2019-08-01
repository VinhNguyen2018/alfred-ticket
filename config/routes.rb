Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :concert_events, only: [:index, :show], as: "concerts", :path => "/concerts"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
