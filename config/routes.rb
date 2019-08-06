Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :concert_events, only: [:index, :show], as: "concerts", :path => "/concerts"
  # resources :orders, only: [:new, :create]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :orders, only: [ :create ]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
