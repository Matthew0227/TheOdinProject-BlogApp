Rails.application.routes.draw do
  get "sign_up", to: "users#new"
  resource :session
  resources :passwords, param: :token
  resources :users, only: [:create]

  resources :blogs do
    resources :comments, except: [:index, :show]
  end
  root "blogs#index"

  get "up" => "rails/health#show", as: :rails_health_check

end

