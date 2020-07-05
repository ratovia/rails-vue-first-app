Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get 'welcome/index'
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :users, only: [:index]
    end
  end
end
