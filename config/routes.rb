Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, :controllers => { registrations: 'registrations' }
  get :my_profile, to: "users#my_profile"
  resources :users, only: [:edit, :update]

  resources :conversations do
    resources :messages, only: :create
  end

  resources :events
  resource :profile, only: [:edit, :update]

  resource :user_interests, only: [:new, :create]

  resources :matches, only: [:new, :create]

end
