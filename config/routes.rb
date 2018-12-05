Rails.application.routes.draw do


  scope '/api' do
  post 'user_token' => 'user_token#create'
  resources :users, only: %i[show]
  end


  namespace :api do
    resources :menu_dishes
    resources :menus
    resources :ingredient_dishes
    resources :dishes
    resources :ingredients
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
