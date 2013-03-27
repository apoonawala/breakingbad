Breakingbad::Application.routes.draw do

  devise_for :users


  root :to => "habits#index"
  resources :habits
  resources :plans

end
