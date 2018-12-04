Rails.application.routes.draw do
  namespace :api do
  resources :menus
  post 'user_token' => 'user_token#create'
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
