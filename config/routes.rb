Rails.application.routes.draw do
  get "sign_up", to: "users#new", as: :sign_up
  resource :session
  resources :passwords, param: :token
  resources :users, only: [:new, :create]

  resources :blogs do
    resources :comments, except: [:index, :show]
  end
  root "blogs#index"

  get "up" => "rails/health#show", as: :rails_health_check

end

