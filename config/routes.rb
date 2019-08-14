Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update, :create]
  root to: 'pages#home'
  get "dashboard", to: "dashboards#index", as: "dashboard"
  get "dashboard/admin", to: "dashboards#admin"

  resources :concert_events, as: "concerts", :path => "/concerts"
  resources :concert_halls
  resources :categories
  resources :orders, only: [:show, :create]

  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
  #     resources :orders, only: [ :create ]
  #   end
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
