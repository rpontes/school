School::Application.routes.draw do
  root :to => "courses#index"

  resources :courses

end
