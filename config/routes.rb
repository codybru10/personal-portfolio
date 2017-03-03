Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/administrator', as: 'rails_admin'
  devise_for :admins
  root to: "landing#index"
  resources :about, :only => ['index']
  resources :repos

end
