Rails.application.routes.draw do

  root to: "homes#top"
  get 'home/about',to: 'homes#about'
  devise_for :users


  resources :books ,only:[:index,:show,:edit, :new, :create,:update ,:destroy]

  resources :users ,only:[:index,:show,:edit, :new, :create, :update , :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
