Rails.application.routes.draw do
  root to: "landing#index"
  resources :about, :only => ['index']
  resources :repos

end
