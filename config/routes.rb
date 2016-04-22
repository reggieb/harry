Rails.application.routes.draw do
  root to: "flood_risk_engine/enrollments#new"

  devise_for :users
  
  authenticate :user do
    mount FloodRiskEngine::Engine => '/fre'

    namespace :admin do
      resources :users
    end
  end
  
end
