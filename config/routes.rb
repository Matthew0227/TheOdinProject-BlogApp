Rails.application.routes.draw do

  resources :blogs do
    resources :comments, except: [:index, :show]
  end
  root "blogs#index"

  get "up" => "rails/health#show", as: :rails_health_check

end
