Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  root to: "landing#index"
  resources :about
  resources :repos

end
