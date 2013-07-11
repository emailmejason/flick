Flick::Application.routes.draw do
  resources :pixes


  resources :albums


  root :to => 'albums#index'
end
