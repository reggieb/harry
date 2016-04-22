Rails.application.routes.draw do

  mount FloodRiskEngine::Engine => '/fre'
  
end
