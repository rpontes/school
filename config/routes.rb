School::Application.routes.draw do
  root :to => "courses#index"

  resources :courses
  resources :students
  resources :disciplines
  resources :teachers

  get "/report", :to => "courses#report"

end
