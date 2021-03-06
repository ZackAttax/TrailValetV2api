Rails.application.routes.draw do
  resources :valets, only: [:create, :update]
  namespace :api do
    namespace :v1 do
      resources :trails, only: [:index, :create, :update, :show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
