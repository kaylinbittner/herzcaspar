Rails.application.routes.draw do
  get :my_profile, to: "users#my_profile"
  root to: "pages#home"
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:edit, :update]

  resources :conversations do
    resources :messages, only: :create
  end
  resources :events do
  end
  resource :profile, only: [:edit, :update]
  resources :matches, only: [:new, :create]

end
