Rails.application.routes.draw do
  root to: "users#my_profile"
  devise_for :users, :controllers => { registrations: 'registrations' }
  get :my_profile, to: "users#my_profile"
end
