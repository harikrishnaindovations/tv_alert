Rails.application.routes.draw do
  resources :tv_shows do
    member do
      get :remove_favourite
      get :add_favourite
    end
  end
  devise_for :users

  root to: "dashboard#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
