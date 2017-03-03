Rails.application.routes.draw do
  devise_for :admins
  root to: "landing#index"
  resources :about, :only => ['index', 'show', 'edit']
  resources :repos

end
