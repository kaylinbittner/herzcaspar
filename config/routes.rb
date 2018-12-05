Rails.application.routes.draw do
  get :my_profile, to: "users#my_profile"
  root to: "pages#home"
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:edit, :update]

  resources :conversations do
    resources :messages, only: :create
  end

  resources :events
  resources :user_events, only: :update

  resource :profile, only: [:edit, :update]

  resource :user_interests, only: [:new, :create]

  resources :matches, only: [:new, :create]

end
