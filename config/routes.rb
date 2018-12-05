Rails.application.routes.draw do


  scope '/api' do
    # Home controller routes.
    root   'home#index'
    get    'auth'            => 'home#auth'

    # Get login token from Knock
    post   'user_token'      => 'user_token#create'

    # User actions
    get    '/users'          => 'users#index'
    get    '/users/current'  => 'users#current'
    post   '/users/create'   => 'users#create'
    patch  '/user/:id'       => 'users#update'
    delete '/user/:id'       => 'users#destroy'
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
