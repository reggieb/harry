Rails.application.routes.draw do

  devise_for :users
  mount FloodRiskEngine::Engine => '/fre'
  
  namespace :admin do
    resources :users
  end
  
end
