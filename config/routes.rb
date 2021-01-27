Rails.application.routes.draw do
  resources :blogs
  resources :blogconfigs
  resources :bloggenres
  resources :blogposts
end
