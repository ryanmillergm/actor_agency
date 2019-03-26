Rails.application.routes.draw do

  # do not change the contents of this file

  resources :agencies, only: [:show] do
    resources :actors, only: [:new, :create]
  end
  
end
