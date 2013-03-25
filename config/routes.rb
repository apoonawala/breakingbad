Breakingbad::Application.routes.draw do

  root to: 'habits#index'
  get '/habits' => "habits#index", :as => :habits

end
