Rails.application.routes.draw do
  resources :players
  resources :squares
  resources :games

  put "/games/:id/join", to: "games#join"
end
