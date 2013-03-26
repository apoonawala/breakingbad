Breakingbad::Application.routes.draw do

  root to: 'habits#index'
  resources :habits

end
