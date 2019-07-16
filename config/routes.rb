Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :users
  resources :adverts do
    collection do
      get 'homepage'
      post 'homepage'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'adverts#homepage'


end
