Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, :controllers => { registrations: 'registrations' }
  get :my_profile, to: "users#my_profile"
  resources :conversations do
    resources :messages, only: :create
  end
  resources :events do
  end

  resource :profile, only: [:edit, :update]
end
