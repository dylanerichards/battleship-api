Rails.application.routes.draw do
  resources :players
  resources :squares
  resources :games

  put "/games/:id/join", to: "games#join"
  put "/games/:id/place-ships", to: "games#place_ships"
  put "/games/:id/nuke", to: "games#nuke"
end
