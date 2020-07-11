Rails.application.routes.draw do
resources :cats
 post "/login", to: "user_token#create"
end
